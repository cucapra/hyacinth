#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include  <stdbool.h>
#include "communication.h"

#define DEBUGGING 0

typedef struct Comm Comm;
struct Comm {
    int id;
    int size;
    void *value;
    Comm *next;
};

typedef struct Context Context;
struct Context {
    Comm *channelList;
    pthread_rwlock_t lock;
};

typedef struct Closure Closure;
struct Closure {
    void (*function)(Context *);
    Context *context;
};

void *init() {
    Context *context = malloc(sizeof(Context));
    context->channelList = NULL;
    pthread_rwlock_init(&context->lock, 0);
    return context;
}

void *_call_function(void *function) {
    #if DEBUGGING
    printf("calling function with thread id = %d\n", (int)pthread_self()); 
    #endif // DEBUGGING

    Closure *closure = (Closure *)function;
    void (*fun)(Context *) = closure->function;
    Context *context = closure->context;
    (*fun)(context);
    return NULL;
}

void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context) {
    pthread_t *threads = malloc(sizeof(pthread_t) * num_functions);

    for (int i = 0; i < num_functions; i++) {
        Closure *closure = malloc(sizeof(Closure));
        closure->function = (void (*)(Context *))function_pts[i];
        closure->context = context;
        pthread_create(&threads[i], NULL, _call_function, closure);
    }
    return threads;
}

void join_partitioned_functions(int num_functions, void *threads_arg) {
    pthread_t *threads = (pthread_t *)threads_arg;

    for (int i = 0; i < num_functions; i++) {
        pthread_join(threads[i], NULL);
    }
}

void _add_channel(void *value, int size, int id, Context *context) {
    Comm *new = malloc(sizeof(Comm));
    new->id = id;
    new->size = size;
    new->value = malloc(size);
    memcpy(new->value, value, size);
    new->next = NULL;

    Comm *node = context->channelList;
    if (!node) {
        context->channelList = new;
    } else {
        while (node->next) {
            node = node->next;
        }
        node->next = new;
    }
}

 Comm *_find_channel(bool destructive, int id, Context *context) {
    Comm *node = context->channelList;
    Comm *prev = NULL;

    while (node) {
        if (id == node->id) {
            if (destructive) {
                #if DEBUGGING
                printf("ID [%d] Deleting node\n", id);
                #endif // DEBUGGING
                if (prev) {
                    prev->next = node->next;
                } else {
                    context->channelList = node->next;
                }
            }
            return node;
        }
        prev = node;
        node = node->next;
    }
    return NULL;
}

void send(void *value, int size, int to_core, int id, void *context) {
    #if DEBUGGING
    printf("ID [%d] Send size: %d\n", id, size);
    if (size == 8) {
        double v = *((double *)value);
        printf("ID [%d] Sending value: %f\n", id, v);
    }
    if (size == 4) {
        int v = *((int *)value);
        printf("ID [%d] Sending value: %d\n", id, v);
    }
    if (size == 1) {
        bool v = *((bool *)value);
        printf("ID [%d] Sending value: %d\n", id, v);
    }
    #endif // DEBUGGING

    Context *c = (Context *)context;
    pthread_rwlock_wrlock(&c->lock);
    _add_channel(value, size, id, c);
    pthread_rwlock_unlock(&c->lock);
}

void *_receive(bool destructive, int size, int id, void *context) {
    #if DEBUGGING
    printf("ID [%d] Receive size: %d\n", id, size);
    #endif // DEBUGGING

    Context *c = (Context *)context;
    while (1) {
        if (destructive) {
            pthread_rwlock_wrlock(&c->lock);
        } else {
            pthread_rwlock_rdlock(&c->lock);
        }
        Comm *node = _find_channel(destructive, id, c);
        pthread_rwlock_unlock(&c->lock);
        if (node) {
            if (node->size != size) {
                printf("WARNING: receive with ID [%d] expected size %d but has size %d\n", id, size, node->size);
            }

            #if DEBUGGING
            if (size == 8) {
                double v = *((double *)node->value);
                printf("ID [%d] Receiving value: %f\n", id, v);
            }
            if (size == 4) {
                int v = *((int *)node->value);
                printf("ID [%d] Receiving value: %d\n", id, v);
            }
            if (size == 1) {
                bool v = *((bool *)node->value);
                printf("ID [%d] Receiving value: %d\n", id, v);
            }
            #endif // DEBUGGING

            return node->value;
        }
    }
    return NULL;
}

void *receive(int size, int from_core, int id, void *context) {
    return _receive(true, size, id, context);
}

void send_argument(void *value, int size, int to_core, int id, void *context) {
    send(value, size, to_core, id, context);
}

void *receive_argument(int size, int id, void *context) {
    return _receive(false, size, id, context);
}

void send_return(void *value, int size, void *context) {
    send(value, size, -1, -1, context);
}

void *receive_return(int size, void *context) {
    return _receive(true, size, -1, context);
}

void send_token(int to_core, int id, void *context) {
     send(NULL, 0, to_core, id, context); 
}

void receive_token(int id, void *context) {
    _receive(true, 0, id, context);
}


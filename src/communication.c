#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

typedef struct Comm Comm;
struct Comm {
    int id;
    double value;
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
    printf("thread id = %d\n", (int)pthread_self()); 
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

void _add_channel(double value, int id, Context *context) {
    Comm *node = context->channelList;

    if (node) {
        while (node->next) {
            node = node->next;
        }
    }
    node = malloc(sizeof(Comm));
    node->id = id;
    node->value = value;
    node->next = NULL;
    context->channelList = node;
}

double *_find_channel(int id, Context *context) {
    Comm *node = context->channelList;

    while (node) {
        printf("_find_channel loop: %d\n", id);
        if (id == node->id) {
            // TODO: remove from the list
            printf("_find_channel return: %d\n", id);
            return &node->value;
        }
        node = node->next;
    }
    return NULL;
}

void send(double value, int to_core, int id, void *context) {
    printf("send:%d\n", id);
    Context *c = (Context *)context;
    pthread_rwlock_wrlock(&c->lock);
    _add_channel(value, id, c);
    pthread_rwlock_unlock(&c->lock);
    printf("send return:%d\n", id);
}

double receive(int from_core, int id, void *context) {
    printf("receive: %d\n", id);
    Context *c = (Context *)context;
    while (1) {
        pthread_rwlock_rdlock(&c->lock);
        double *value = _find_channel(id, c);
        pthread_rwlock_unlock(&c->lock);
        if (value) {
            printf("receive: %d, return\n", id);
            return *value;
        }
        sleep(rand() % 2);
    }
    return 0.0;
}

// void a(void *c) {
//     printf("a\n");
//     // Receive first argument from main
//     double argA = receive(-1, 0, c);
//     // Send argument + 1 to b
//     argA += 1.0;
//     send(argA, 1, 2, c);
// }

// void b(void *c) {
//     printf("b\n");
//     // Receive second argument from main
//     double argB = receive(-1, 1, c);
//     double receiveFromA = receive(0, 2, c);
//     receiveFromA += 2.0;
//     send(receiveFromA, -1, 3, c);
// }

// int main(int argc, char const *argv[]) {
//     void *context = init();

//     int size = sizeof(void (*)(void *));
//     void (**function_pts)(void *) = malloc(2 * size);
//     *function_pts = a;  
//     *(function_pts + 1) = b;
//     void *threads = call_partitioned_functions(2, function_pts, context);

//     // Send 0 to A
//     send(0, 0, 0, context);
//     // Send 5 to B
//     send(5, 1, 1, context);

//     // Receive result from B
//     double result = receive(1, 3, context);

//     join_partitioned_functions(1, threads);

//     printf("result: %f\n", result);
//     return 0;
// }
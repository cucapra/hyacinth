#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include  <stdbool.h>
#include "communication.h"

#define DEBUGGING 1

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

typedef struct i64Comms i64Comms;
struct i64Comms {
    int64_t value;
    char ready;
};

typedef struct i1Comms i1Comms;
struct i1Comms {
    char value;
    char ready;
};

void *return_value_ptr;
volatile bool return_ready = false;

void *init() {
    printf("init\n");
    return NULL;
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
    printf("call_partitioned_functions\n");
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


// Addr points to a struct of { value, ready_flag }
void send(void *value, int size, int to_core, int64_t addr, void *context) {
    #if DEBUGGING
    printf("ID [%lld] Send size: %d\n", addr, size);
    #endif // DEBUGGING


    printf("sizeof(int64_t) %lu\n", sizeof(int64_t));
    char *ready_addr;
    if (size == 8) {    
        i64Comms *comms_addr = (i64Comms *)addr;
        int64_t *value_addr = &(comms_addr->value);

        if (value_addr != (int64_t *)addr) {
            printf("fuck 1!\n");
        }

        ready_addr = &(comms_addr->ready);
        if ((void *)ready_addr != (void *)addr + size) {
            printf("fuck 2!\n");
        }

        printf("i64 value [%lld]: %f, ready[%lld]: %d\n", addr, *((int64_t *)value), addr + size, *(char *)(addr + size));
    } 
    if (size == 1) {
        i1Comms *comms_addr = (i1Comms *)addr;
        char *value_addr = &(comms_addr->value);

        if (value_addr != (char *)addr) {
            printf("fuck 3!\n");
        }

        ready_addr = &(comms_addr->ready);
        if ((void *)ready_addr != (void *)addr + size) {
            printf("fuck 4!\n");
        }

        printf("bool value [%lld]: %c, ready[%lld]: %d\n", addr, *(char *)value, addr + size, *(char *)(addr + size));
    }

    // Make sure we aren't overwriting the old value 
    int ready = 1;
    while (ready) {
        ready = *(char *)(addr + size);
    }

    // Copy the new value to the struct
    memcpy((void *)addr, value, size);

    if (size == 8) {  
        if (*(int64_t *)addr != *(int64_t *)value) {
            printf("fuck 5!\n");
        }
    }
    if (size == 1) {  
        if (*(char *)addr != *(char *)value) {
            printf("fuck 6!\n");
        }
    }

    // Finally, set the ready flag, which is right after the value data
    char *ready_ptr = (void *)(addr + size);
    *ready_ptr = 1;

    if (!*ready_addr) {
        printf("fuck 7!\n");
    }
}

void *_receive(bool destructive, int size, int64_t addr, void *context) {
    #if DEBUGGING
    printf("ID [%lld] Receive size: %d\n", addr, size);
    #endif // DEBUGGING

    while (1) {
        char *ready_ptr = (void *)(addr + size);
        if (*ready_ptr == 0) {
            printf("ID [%lld] not ready! \n", addr);
            sleep(1);
            continue;
        }
        printf("ID [%lld] now ready! \n", addr);

        if (destructive) {
            printf("ID [%lld] not ready again! \n", addr);
            *ready_ptr = 0;
        }
        if (size == 8) {
            printf("addr [%lld]: %lld, ready[%lld]: %d\n", addr, *(int64_t *)addr, addr + size, *(char *)(addr + size));
        } 
        if (size == 1) {
            printf("addr [%lld]: %c, ready[%lld]: %d\n", addr, *(char *)addr, addr + size, *(char *)(addr + size));
        }
        return (void *)addr;

    }
    return NULL;
}

void *receive(int size, int from_core, int64_t addr, void *context) {
    return _receive(true, size, addr, context);
}

void send_argument(void *value, int size, int to_core, int64_t addr, void *context) {
    send(value, size, to_core, addr, context);
}

void *receive_argument(int size, int64_t addr, void *context) {
    return _receive(false, size, addr, context);
}

void send_return(void *value, int size, void *context) {
    // Allocate memory for the return value and set our global pointer/ready
    void *return_value = malloc(size);
    memcpy(return_value, value, size);
    return_value_ptr = return_value;
    return_ready = true;
}

void *receive_return(int size, void *context) {
    // Wait until the value is ready then return
    while (!return_ready) {}
    return return_value_ptr;
}

void send_token(int to_core, int64_t addr, void *context) {
     send(NULL, 0, to_core, addr, context); 
}

void receive_token(int64_t addr, void *context) {
    _receive(true, 0, addr, context);
}


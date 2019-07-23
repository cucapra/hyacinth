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

    // Make sure we aren't overwriting the old value 
    int ready = 1;
    while (ready) {
        printf("ID [%lld] not ready for send! \n", addr);
        ready = *(char *)((void *)addr + size);
    }

    // Copy the new value to the struct
    memcpy((void *)addr, value, size);

    // Finally, set the ready flag, which is right after the value data
    char *ready_ptr = (void *)addr + size;
    *ready_ptr = 1;
    printf("ID [%lld] now ready! \n", addr);
}

void *_receive(int size, int64_t addr, void *context) {
    #if DEBUGGING
    printf("ID [%lld] Receive size: %d\n", addr, size);
    #endif // DEBUGGING

    while (1) {
        char *ready_ptr = (void *)(addr + size);
        if (*ready_ptr == 0) {
            printf("ID [%lld] not ready for receive! \n", addr);
            continue;
        }

        return (void *)addr;

    }
    return NULL;
}

void *receive(int size, int from_core, int64_t addr, void *context) {
    return _receive(size, addr, context);
}

void free_comms(int64_t addr, int size, void *context) {
    printf("ID [%lld] Free size: %d\n", addr, size);
    char *ready_ptr = (void *)addr + size;
    memset(ready_ptr, 0, 1);
}

void send_argument(void *value, int size, int to_core, int64_t addr, void *context) {
    printf("send_argument\n");
    send(value, size, to_core, addr, context);
}

void *receive_argument(int size, int64_t addr, void *context) {
    printf("receive_argument\n");
    return _receive(size, addr, context);
}

void send_return(void *value, int size, void *context) {
    printf("send_return\n");
    // Allocate memory for the return value and set our global pointer/ready
    void *return_value = malloc(size);
    memcpy(return_value, value, size);
    return_value_ptr = return_value;
    return_ready = true;
}

void *receive_return(int size, void *context) {
    printf("receive_return\n");
    // Wait until the value is ready then return
    while (!return_ready) {}
    printf("retury ready\n");
    return return_value_ptr;
}

void send_token(int to_core, int64_t addr, void *context) {
    printf("send_token\n");
     send(NULL, 0, to_core, addr, context); 
}

void receive_token(int64_t addr, void *context) {
    printf("receive_token\n");
    _receive(0, addr, context);
}


#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include  <stdbool.h>
#include "communication.h"

#define DEBUGGING 0

typedef struct Context Context;
struct Context {
};

typedef struct Closure Closure;
struct Closure {
    void (*function)(Context *);
    Context *context;
};

extern volatile void return_struct;

void volatile_copy(volatile char *dest, volatile char *src, unsigned len) {
    while (len) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

void *init() {
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
        ready = *(volatile char *)((volatile void *)addr + size);
    }

    // Copy the new value to the struct
    volatile_copy((volatile char *)addr, value, size);

    // Finally, set the ready flag, which is right after the value data
    char *ready_ptr = (void *)addr + size;
    *ready_ptr = 1;
}

void *_receive(int size, int64_t addr, void *context) {
    #if DEBUGGING
    printf("ID [%lld] Receive size: %d\n", addr, size);
    #endif // DEBUGGING

    while (1) {
        volatile char *ready_ptr = (volatile void *)addr + size;
        if (*ready_ptr == 0) {
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
    #if DEBUGGING
    printf("ID [%lld] Free size: %d\n", addr, size);
    #endif // DEBUGGING

    volatile char *ready_ptr = (volatile void *)addr + size;
    *ready_ptr = '\0';
}

void send_argument(void *value, int size, int to_core, int64_t addr, void *context) {
    send(value, size, to_core, addr, context);
}

void *receive_argument(int size, int64_t addr, void *context) {
    return _receive(size, addr, context);
}

void send_return(void *value, int size, void *context) {
    send(value, size, -1, (int64_t)&return_struct, context);
}

void *receive_return(int size, void *context) {
    // Wait until the value is ready then return
    return _receive(size, (int64_t)&return_struct, context);
}

void send_token(int to_core, int64_t addr, void *context) {
    send(NULL, 0, to_core, addr, context); 
}

void receive_token(int64_t addr, void *context) {
    _receive(0, addr, context);
}


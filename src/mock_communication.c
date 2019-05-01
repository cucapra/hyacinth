#include <pthread.h> 
#include <stdlib.h>

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
    printf("thread id = %d\n", pthread_self()); 
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

void send(double value, int to_core, int id, void *context) {
    Context *c = (Context *)context;
    pthread_rwlock_wrlock(&c->lock);
    pthread_rwlock_unlock(&c->lock);
}

double receive(int from_core, int id, void *context) {
    Context *c = (Context *)context;
    pthread_rwlock_wrlock(&c->lock);
    pthread_rwlock_unlock(&c->lock);
    return 0.0;
}
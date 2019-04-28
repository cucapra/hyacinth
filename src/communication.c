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

void *init() {
    Context *context = malloc(sizeof(Context));
    context->channelList = NULL;
    pthread_rwlock_init(&context->lock, 0);
    return context;
}

void *call_function(void *name) {
    void (*function)(void) = (void (*)(void))name;
    (*function)();
    return NULL;
}

void *call_partitioned_functions(int num_functions, void (**function_pts)(void)) {
    pthread_t *threads = malloc(sizeof(pthread_t) *num_functions);

    for (int i = 0; i < num_functions; i++) {
        pthread_create(&threads[i], NULL, call_function, function_pts[i]);
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

    while (node->next) {
        node = node->next;
    }

    node = malloc(sizeof(Comm));
    node->id = id;
    node->value = value;
    node->next = NULL;
}

double *_find_channel(int id, Context *context) {
    Comm *node = context->channelList;

    while (node) {
        if (id == node->id) {
            // TODO: remove from the list
            return &node->value;
        }
        node = node->next;
    }
    return NULL;
}

void send(double value, int to_core, int id, void *context) {
    Context *c = (Context *)context;
    pthread_rwlock_wrlock(&c->lock);
    _add_channel(value, id, c);
    pthread_rwlock_unlock(&c->lock);
}

double receive(int from_core, int id, void *context) {
    Context *c = (Context *)context;
    while (1) {
        pthread_rwlock_wrlock(&c->lock);
        double *value = _find_channel(id, c);
        if (value) {
            return *value;
        }
        pthread_rwlock_unlock(&c->lock);
    }
    return 0.0;
}
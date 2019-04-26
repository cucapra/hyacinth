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

void _add_channel(double value, int id, Context *context) {
    Comm *node = context->channelList;

    while (node->next) {
        node = node->next;
    }

    node = (Comm *)malloc(sizeof(Comm));
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

void *init() {
    Context *context = (Context *)malloc(sizeof(Context));
    context->channelList = NULL;
    pthread_rwlock_init(&context->lock, 0);
    return context;
}
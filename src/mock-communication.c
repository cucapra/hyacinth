#include <pthread.h> 
#include <stdlib.h>

void *init() {
    return NULL;
}

void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context) {
    return NULL;
}

void join_partitioned_functions(int num_functions, void *threads_arg) {

}

void send(double value, int to_core, int id, void *context) {

}

double receive(int from_core, int id, void *context) {
    return 0.0;
}
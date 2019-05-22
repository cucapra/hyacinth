#include <assert.h>
#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include "communication.h"

void send_double(double value, int to_core, int id, void *context) {
    send(&value, sizeof(double), to_core, id, context);
}

double receive_double(int from_core, int id, void *context){
    double *result = (double *)receive(from_core, id, context);
    return *result;
}

void send_3x3_double(double value[3][3], int to_core, int id, void *context) {
    send(&value, sizeof(double[3][3]), to_core, id, context);
}

void send_3_double(double value[3], int to_core, int id, void *context) {
    send(&value, sizeof(double[3]), to_core, id, context);
}

double *receive_3x3_double(int from_core, int id, void *context){
    double *result = (double *)receive(from_core, id, context);
    return result;
}

void a(void *c) {
    printf("a\n");
    // Receive first argument from main
    double argA = receive_double(-1, 0, c);
    assert((int)argA == 0);
    // Send argument + 1 to b
    argA += 1.0;
    send_double(argA, 1, 2, c);
}

void b(void *c) {
    printf("b\n");
    // Receive second argument from main
    double argB = receive_double(-1, 1, c);
    assert((int)argB == 5);
    double receiveFromA = receive_double(0, 2, c);
    assert((int)receiveFromA == 1);
    receiveFromA += 2.0;
    send_double(receiveFromA, -1, 3, c);
}

int main(int argc, char const *argv[]) {
    void *context = init();

    int size = sizeof(void (*)(void *));
    void (**function_pts)(void *) = malloc(2 * size);
    *function_pts = a;  
    *(function_pts + 1) = b;
    void *threads = call_partitioned_functions(2, function_pts, context);

    // Send 0 to A
    send_double(0, 0, 0, context);
    // Send 5 to B
    send_double(5, 1, 1, context);

    // Receive result from B
    double result = receive_double(1, 3, context);
    assert((int)result == 3);

    join_partitioned_functions(1, threads);

    printf("result: %f\n", result);
    return 0;
}
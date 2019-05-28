#include <assert.h>
#include <pthread.h> 
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "communication.h"

int arr1[3] = {0, 1, 2};
int arr2[3] = {3, 4, 5};

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

void simple_a(void *c) {
    // Receive first argument from main
    double argA = receive_double(-1, 0, c);
    assert((int)argA == 0);
    // Send argument + 1 to b
    argA += 1.0;
    send_double(argA, 1, 2, c);
}

void simple_b(void *c) {
    // Receive second argument from main
    double argB = receive_double(-1, 1, c);
    assert((int)argB == 5);
    double receiveFromA = receive_double(0, 2, c);
    assert((int)receiveFromA == 1);
    receiveFromA += argB + 2.0;
    send_double(receiveFromA, -1, 3, c);
}

void simple_test () {
    void *context = init();

    int size = sizeof(void (*)(void *));
    void (**function_pts)(void *) = malloc(2 * size);
    *function_pts = simple_a;  
    *(function_pts + 1) = simple_b;
    void *threads = call_partitioned_functions(2, function_pts, context);

    // Send 0 to A
    send_double(0, 0, 0, context);
    // Send 5 to B
    send_double(5, 1, 1, context);

    // Receive result from B
    double result = receive_double(1, 3, context);

    join_partitioned_functions(2, threads);

    assert((int)result == 8);
    printf("simple test result: %f\n", result);
}

void array_a(void *c) {
    // Receive first argument from main
    int *result1 = malloc(sizeof(int[3]));
    memcpy(result1, receive(-1, 0, c), sizeof(int[3]));
    for (int i = 0; i < 3; i++) {
        assert(arr1[i] == result1[i]);
        printf("array result1[%d]: %d\n", i, result1[i]);
    }

    // Receive second argument from main
    int *result2 = malloc(sizeof(int[3]));
    memcpy(result2, receive(-1, 1, c), sizeof(int[3]));
    for (int i = 0; i < 3; i++) {
        assert(arr2[i] == result2[i]);
        printf("array result1[%d]: %d\n", i, result2[i]);
    }
}

void array_test () {
    void *context = init();

    int size = sizeof(void (*)(void *));
    int num_funs = 1;
    void (**function_pts)(void *) = malloc(num_funs * size);
    *function_pts = array_a;  
    void *threads = call_partitioned_functions(num_funs, function_pts, context);

    // Send [1, 2, 3] to A
    send(arr1, sizeof(arr1), 0, 0, context);
    send(arr2, sizeof(arr1), 0, 1, context);

    join_partitioned_functions(num_funs, threads);
}

int main(int argc, char const *argv[]) {
    simple_test();

    array_test();
    return 0;
}
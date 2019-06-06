// ARGS: 10

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>

int fib(int n) {
    int result = 0;
    int first = 0;
    int second = 1;

    for (int i = 0; i < n; i++) {
        if (i <= 1) {
            result = i;
        } else {
            result = first + second;
            first = second;
            second = result;
        }
    }
    return result;
}

int main(int argc, char **argv) {
    int r = fib(atoi(argv[1]));
    printf("%d\n", r);
    return 0;
}
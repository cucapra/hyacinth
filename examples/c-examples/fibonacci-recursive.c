#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>

int fib(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fib(n-1) + fib(n-2);
    }
}

int main(int argc, char **argv) {
    int r = fib(atoi(argv[1]));
    printf("%d\n", r);
    return 0;
}
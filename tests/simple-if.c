// ARGS: 5

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>

void _p_if_f(int a) {
    int b = 0;
    if (a < 5) {
        printf("1\n");
        b = 0;
    } else {
        printf("2\n");
        b = 1;
    }
    printf("b: %d\n", b);
}

int main(int argc, char **argv) {
    _p_if_f(atoi(argv[1]));
    return 0;
}
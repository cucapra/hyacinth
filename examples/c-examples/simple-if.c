#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>

void if_f(int a) {
    if (a < 5) {
        printf("1\n");
        printf("2\n");
    } else {
        printf("3\n");
        printf("4\n");
    }
}

int main(int argc, char **argv) {
    if_f(atoi(argv[1]));
    return 0;
}
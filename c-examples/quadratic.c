#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double quadratic(double a, double b, double c) {
    double s = b * b - 4 * a * c;
    double d = 2 * a;
    double r1 = (-b + sqrt(s)) / d;
    printf("print1\n");
    double r2 = (-b - sqrt(s)) / d;
    printf("print2\n");
    return r1 ?: r2; 
}

int main(int argc, char **argv) {
    printf("starting main\n");
    double a = (double)atoi(argv[1]);
    double b = (double)atoi(argv[2]);
    double c = (double)atoi(argv[3]);
    printf("%f\n", quadratic(a, b, c));
    return 0;
}
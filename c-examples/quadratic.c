#include <stdio.h>
#include <math.h>

int main() {
    return 0;
}

double quadratic(double a, double b, double c) {
    double s = b * b - 4 * a * c;
    double d = 2 * a;
    double r1 = (-b + sqrt(s)) / d;
    double r2 = (-b - sqrt(s)) / d;
    return r1 ?: r2; 
}

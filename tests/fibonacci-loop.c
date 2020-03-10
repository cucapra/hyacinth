// ARGS: 10

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>

float _p_fib(float a, float b, float d, float i, float e, float k) {

    float c = a + b;
    float f = d + e;
    float h = sqrt(f);
    float j = h + i;
    float l = e + k;
    return l;
}

int main(int argc, char **argv) {
    // float r = _p_fib(atoi(argv[1]));
    // prfloatf("%d\n", r);
    return 0;
}
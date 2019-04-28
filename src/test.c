#include <stdlib.h>
#include <stdio.h>

void replace(int num_functions, void (**function_pts)(void)) {
    for (int i = 0; i < num_functions; i++) {
        printf("i : %d\n", i);
        (*(function_pts[i]))();
    }
}

void a() {
    printf("a called\n");
}

void b() {
    printf("b called\n");
}

int main() {
    int size = sizeof(void (*)(void));
    void (**function_pts)(void) = malloc(2 * size);
    printf("first pt : %p\n", *function_pts);
    *function_pts = a;  
    void (**b_pt)(void) = function_pts;
    b_pt++;
    printf("second pt : %p\n", *b_pt);
    *b_pt = b;  
    replace(2, function_pts);
}
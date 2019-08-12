#include <stdio.h>
#include <math.h>

void _p_multiply(double a[3][3], double b[3][3], double res1[3][3], double res2[3][3], double res3[3][3], double res4[3][3]) { 
    for (int i = 0; i < 3; i++) { 
        for (int j = 0; j < 3; j++) { 
            res1[i][j] = 0; 
            res2[i][j] = 0; 
            res3[i][j] = 0; 
            for (int k = 0; k < 3; k++) {
                res1[i][j] += sqrt(a[i][k]*b[k][j]);     
                res2[i][j] += sqrt(a[i][k])*b[k][j];      
                res3[i][j] += a[i][k]*sqrt(b[k][j]);     
            }
        } 
    } 
    for (int i = 0; i < 3; i++) { 
        for (int j = 0; j < 3; j++) { 
            res4[i][j] = res1[i][j] + res2[i][j] + res3[i][j];
        } 
    } 
} 

int main(int argc, char const *argv[]) {
    double res1[3][3];
    double res2[3][3];
    double res3[3][3];
    double res4[3][3];
    double a[3][3] = {{1, 1, 1}, {2, 2, 2}, {3, 3, 3}}; 
    double b[3][3] = {{1, 2, 3}, {1, 2, 3}, {1, 2, 3}}; 
  
    _p_multiply(a, b, res1, res2, res3, res4); 

    for (int i = 0; i < 3; i++) { 
        for (int j = 0; j < 3; j++) {
            printf("%f ", res4[i][j]); 
        }
        printf("\n"); 
    } 

    return 0;
}
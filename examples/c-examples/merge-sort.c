#include <stdio.h>
#include <stdlib.h>
#include <math.h>


#define SIZE 10
#define TYPE int
#define TYPE_MAX INT32_MAX

void ms_mergesort(TYPE a[SIZE]) {
    int start, stop;
    int i, m, from, mid, to;

    start = 0;
    stop = SIZE;

    for(m=1; m<stop-start; m+=m) {
        for(i=start; i<stop; i+=m+m) {
            from = i;
            mid = i+m-1;
            to = i+m+m-1;
            if(to < stop){
                TYPE temp[SIZE];
                int i, j, k;

                for(i=from; i<=mid; i++){
                    temp[i] = a[i];
                }

                for(j=mid+1; j<=to; j++){
                    temp[mid+1+to-j] = a[j];
                }

                i = from;
                j = to;

                for(k=from; k<=to; k++){
                    TYPE tmp_j = temp[j];
                    TYPE tmp_i = temp[i];
                    if(tmp_j < tmp_i) {
                        a[k] = tmp_j;
                        j--;
                    } else {
                        a[k] = tmp_i;
                        i++;
                    }
                }
            }
            else{
                TYPE temp[SIZE];
                int i, j, k;

                for(i=from; i<=mid; i++){
                    temp[i] = a[i];
                }

                for(j=mid+1; j<=stop; j++){
                    temp[mid+1+stop-j] = a[j];
                }

                i = from;
                j = stop;

                for(k=from; k<=stop; k++){
                    TYPE tmp_j = temp[j];
                    TYPE tmp_i = temp[i];
                    if(tmp_j < tmp_i) {
                        a[k] = tmp_j;
                        j--;
                    } else {
                        a[k] = tmp_i;
                        i++;
                    }
                }
            }
        }
    }
}

int main(int argc, char const *argv[]) {
    int a[10] = {2, 10, 4, 7, 8, 1, 9, 5, 3, 6};
  
    ms_mergesort(a);

    for (int i = 0; i < 10; i++) { 
        printf("%d\n", a[i]);
    } 

    return 0;
}

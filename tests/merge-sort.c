// Note: modified from MachSuite: https://breagen.github.io/MachSuite/
// > Brandon Reagen, Robert Adolf, Sophia Yakun Shao, Gu-Yeon Wei, and David Brooks.
// > *"MachSuite: Benchmarks for Accelerator Design and Customized Architectures."*
//   2014 IEEE International Symposium on Workload Characterization.

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define SIZE 256
#define TYPE int
#define TYPE_MAX INT32_MAX

int a[SIZE] = {8630, 2371, 2106, 7047, 9475, 9554, 7281, 6704, 1253, 2157, 2702, 5221, 549, 5266, 7151, 8215, 8118, 7034, 2088, 9135, 3332, 6269, 5470, 1887, 9323, 8378, 8971, 7937, 9515, 3476, 1646, 3823, 555, 2036, 5010, 2633, 6890, 6000, 3503, 4297, 8403, 1966, 4584, 296, 322, 5328, 9540, 4442, 8455, 1645, 918, 2763, 4392, 6305, 3658, 8480, 8317, 6815, 5122, 5437, 2203, 511, 5744, 7766, 2356, 2207, 9796, 3578, 7374, 2888, 9291, 7479, 5700, 1726, 1181, 4994, 9697, 5623, 9487, 8533, 5359, 5216, 1, 6160, 8711, 8220, 6721, 4251, 288, 1950, 4118, 8633, 7052, 5668, 9958, 9749, 3057, 163, 5420, 7122, 3599, 2192, 5139, 4181, 6943, 16, 2609, 144, 3845, 5201, 8248, 5315, 4539, 8064, 671, 7867, 3556, 6717, 5041, 7526, 2624, 2612, 1269, 6184, 5584, 4656, 4378, 1243, 7797, 9670, 3304, 5750, 3355, 8214, 2352, 5843, 770, 7960, 3927, 9337, 6192, 4939, 4203, 9404, 3437, 4012, 8768, 6298, 9854, 7487, 537, 6765, 8956, 292, 6868, 8865, 2349, 1272, 2426, 5098, 1587, 7189, 7336, 2419, 3763, 5662, 9479, 3154, 33, 4661, 4990, 7170, 6230, 5919, 2969, 1882, 4291, 6145, 9519, 2130, 3981, 6171, 7298, 8669, 1915, 1826, 520, 2619, 2685, 9032, 7117, 7485, 3923, 4877, 6452, 1773, 2854, 3782, 448, 6425, 1996, 1688, 7995, 8573, 7790, 4629, 3495, 3746, 8733, 7781, 8415, 526, 6759, 9079, 8943, 3982, 6409, 8583, 3020, 4513, 5015, 7657, 6111, 3815, 9629, 1856, 1560, 8332, 5885, 9471, 1330, 7337, 7486, 9288, 7380, 524, 4007, 9589, 9680, 4558, 3996, 9331, 2769, 4166, 1952, 8244, 434, 5746, 7112, 7613, 2348, 4351, 393, 4421, 6386, 8158};

void ms_mergesort() {
    int start, stop;
    int i, m, from, mid, to;

    start = 0;
    stop = SIZE;

    for (m=1; m<stop-start; m+=m) {
        for (i=start; i<stop; i+=m+m) {
            from = i;
            mid = i+m-1;
            to = i+m+m-1;
            if (to < stop) {
                TYPE temp[SIZE];
                int i, j, k;

                for (i=from; i<=mid; i++) {
                    temp[i] = a[i];
                }

                for (j=mid+1; j<=to; j++) {
                    temp[mid+1+to-j] = a[j];
                }

                i = from;
                j = to;

                for (k=from; k<=to; k++) {
                    TYPE tmp_j = temp[j];
                    TYPE tmp_i = temp[i];
                    if (tmp_j < tmp_i) {
                        a[k] = tmp_j;
                        j--;
                    } else {
                        a[k] = tmp_i;
                        i++;
                    }
                }
            } else {
                TYPE temp[SIZE];
                int i, j, k;

                for (i=from; i<=mid; i++) {
                    temp[i] = a[i];
                }

                for (j=mid+1; j<=stop; j++) {
                    temp[mid+1+stop-j] = a[j];
                }

                i = from;
                j = stop;

                for (k=from; k<=stop; k++) {
                    TYPE tmp_j = temp[j];
                    TYPE tmp_i = temp[i];
                    if (tmp_j < tmp_i) {
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
    ms_mergesort();

    for (int i = 0; i < SIZE; i++) { 
        printf("%d\n", a[i]);
    } 

    return 0;
}

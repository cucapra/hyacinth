#include "bsg_surface.h"
#include <stdlib.h>
#include <stdio.h>

int tile_id() {
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  
    return tile_id;
}

void *init() {
    return NULL;
}

void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context) {
    for (int i = 0; i < num_functions; i++) {
        if (i == tile_id()) {
            void (*fun)(void *) = function_pts[i];
            (*fun)(context);
        }        
    }
    return NULL;
}

void join_partitioned_functions(int num_functions, void *threads_arg) {

}

void send(void *value, int size, int to_core, int id, void *context) {

}

void *receive(int size, int from_core, int id, void *context) {
    return NULL;
}

void *receive_argument(int size, int from_core, int id, void *context) {
    return NULL;   
}
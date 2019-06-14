#include "bsg_surface.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// --- Communication buffer number of elements ---

// NUM_COMMS should be defined from the compiler/Makefile
#ifndef NUM_COMMS
#define NUM_COMMS 100
#endif // NUM_COMMS

#ifndef COMMS_BUFFER_SIZE
#define COMMS_BUFFER_SIZE NUM_COMMS * sizeof(long long)
#endif // NUM_COMMS

// --- Communication buffer metadata ---
int comms_ready[NUM_COMMS];     // Communication data for the ID is ready to be read
int comms_start_idx[NUM_COMMS]; // Start index into the data buffer
int comms_size[NUM_COMMS];      // Size of the value for this communication

// --- Communication buffer ---
// Data and metadata should be kept on the *receiving* tile's memory
char comms_buffer[COMMS_BUFFER_SIZE];

// Treat the communication buffer as a linear buffer for now
int comms_buffer_start = 0;

int tile_id() {
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  
    return tile_id;
}

void *init() {
    return NULL;
}

// Context is NULL and ignored for now 
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
    // Concert coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Grab the start of the communication buffer for the recepient
    int *buffer_start_idx_ptr = bsg_remote_ptr(to_x, to_y, &comms_buffer_start);
    int start_idx = *buffer_start_idx_ptr;

    // Set the communication buffer metadata on the recepient for this ID
    int *start_idx_ptr = (void *)bsg_remote_ptr(to_x, to_y, &comms_start_idx[id]);
    *start_idx_ptr = start_idx;
    int *comms_size_ptr = (void *)bsg_remote_ptr(to_x, to_y, &comms_size[id]);
    *comms_size_ptr = size;

    // Write the actual value into the communication buffer on the recepient
    char *buffer_value_ptr = (void *)bsg_remote_ptr(to_x, to_y, &comms_buffer[start_idx]);    
    memcpy(buffer_value_ptr, value, size);

    // Finally, write out to the recepient that this value is ready
    int *ready_ptr = bsg_remote_ptr(to_x, to_y, &comms_ready[id]);
    *ready_ptr = 1;
}

void *_receive_shared(int size, int from_core, int id, void *context) {
    // Wait patiently until the value is ready
    bsg_wait_while(comms_ready[id]);

    // Metdata should already be written by sender
    int start_idx = comms_start_idx[id];
    int actual_size = comms_size[id];

    // Sanity check sizes match
    if (actual_size != size) {
        printf("WARNING: receive with ID [%d] expected size %d but has size %d\n", id, size, actual_size);
    }

    // Return this address into the buffer
    return &comms_buffer[start_idx];
}

void *receive(int size, int from_core, int id, void *context) {
    void *value = _receive_shared(size, from_core, id, context);

    // Regular reads should be destructive: the value is no longer ready
    comms_ready[id] = 0;

    // Return this address into the buffer
    return value;
}

void *receive_argument(int size, int from_core, int id, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, from_core, id, context);;   
}
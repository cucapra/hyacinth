#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include <bsg_manycore.h>
#include <bsg_set_tile_x_y.h>
#include <bsg_cuda_lite_runtime.h>

#include <stdint.h>

// Set up the completion barrier.
#define BSG_TILE_GROUP_X_DIM bsg_tiles_X
#define BSG_TILE_GROUP_Y_DIM bsg_tiles_Y
#include "bsg_tile_group_barrier.h"
INIT_TILE_GROUP_BARRIER(r_barrier, c_barrier, 0, bsg_tiles_X - 1, 0,
    bsg_tiles_Y - 1);

extern volatile char return_struct;

void copy(char *dest, char *src, unsigned len) {
    while (len > 0) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

void print_int(int32_t i) {
    bsg_print_int(i);
}

void print_addr(void *a) {
    bsg_print_int(a);
    bsg_print_int(*(int32_t *)a);
}

void send(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {
    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    // The struct layout is:
    //   { 
    //     value   [size bytes],
    //     ready   [1 byte],
    //     padding [4 bytes],
    //.   }
    int size_with_ready = size + 1;
    int aligned_size = (size_with_ready + 3) / 4 * 4;

    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Make sure we aren't overwriting the old value.
    // Ready may not be word aligned, but we need to read the whole word.
    // Read it into our *local* struct for convenience
    int ready_addr = addr + size;
    int ready_word_addr = ready_addr / 4 * 4;
    do {
         bsg_remote_load(to_x, to_y, ready_word_addr, *(int *)ready_word_addr);
    } while (*(char *)ready_addr);

    // Reset our local value
    *(int *)ready_word_addr = 0;

    // Copy the new value and ready flag to our *local* version of the struct
    copy((char *)addr, value, size);

    *(char *)ready_addr = 1;

    // Write our local struct to the *remote* destination struct
    void *remote = bsg_remote_ptr(to_x, to_y, addr);

    copy(remote, (char *)addr, aligned_size);
}

void send_return(void *value, int32_t size, void *context) {
    copy((char *)&return_struct, value, size);
}

void *_receive_shared(int32_t size, int32_t addr, void *context) {
    // Wait patiently until the value is ready
    bsg_wait_while(!*((volatile char *)addr + size));

    // Return this address 
    return (void *)addr;
}

void *receive(int32_t size, int32_t from_core, int32_t addr, void *context) {
    // Return this address 
    return _receive_shared(size, addr, context);
}

void free_comms(int32_t addr, int size, void *context) {
    // Reset our location struct's ready flag to 0
    volatile char *ready_ptr = (volatile char *)addr + size;
    *ready_ptr = '\0';
}

void *receive_argument(int32_t size, int32_t addr, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, addr, context);;
}

void send_token(int to_core, int addr, void *context) {
}

void receive_token(int addr, void *context) {
}

void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context) {
    bsg_set_tile_x_y();
    int num_tiles = bsg_num_tiles;
    int tile_id = bsg_x_y_to_id(bsg_x, bsg_y);  

    // TODO: this will misplace tiles if IDs are skipped
    if (tile_id < num_functions) {
        function_pts[tile_id](0);
    }

    bsg_tile_group_barrier(&r_barrier, &c_barrier);
    return NULL;
}

// This program is a complete executable, so it needs a main. Our main just
// needs to call this function to wait for instructions (i.e., to call the
// function above).
int main() {
   __wait_until_valid_func();
   return 0;
}

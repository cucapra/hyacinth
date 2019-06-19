#include "bsg_manycore.h"
#include "bsg_set_tile_x_y.h"

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

// --- Communication buffer number of elements ---

// NUM_COMMS should be defined from the compiler/Makefile
#ifndef NUM_COMMS
#define NUM_COMMS 100
#endif // NUM_COMMS

#ifndef COMMS_BUFFER_SIZE
#define COMMS_BUFFER_SIZE NUM_COMMS * sizeof(long long)
#endif // NUM_COMMS

// --- Communication buffer ---
// Data and metadata should be kept on the *receiving* tile's memory
volatile char comms_buffer[COMMS_BUFFER_SIZE];

// --- Communication buffer metadata ---
// Communication data for the ID is ready to be read
volatile int32_t comms_ready[NUM_COMMS];
// Start index into the data buffer
volatile int32_t comms_start_idx[NUM_COMMS];
// Size of the value for this communication
volatile int32_t comms_size[NUM_COMMS];

// Treat the communication buffer as a linear buffer for now
volatile int32_t comms_buffer_start = 0;

// Return value(s). Note this attribute specifies that this is shared DRAM memory
volatile char global_return[COMMS_BUFFER_SIZE]  __attribute__((section(".dram")));

void copy(char *dest, char *src, unsigned len) {
    while (len) {
        *dest = *src;
        dest++;
        src++;
        len -= sizeof(char);
    }
}

void send(void *value, int size, int to_core, int id, void *context) {
    // Construct coordinates
    int to_x = bsg_id_to_x(to_core);
    int to_y = bsg_id_to_y(to_core);

    // Grab the start of the communication buffer for the recepient
    int start_idx;
    bsg_remote_load(to_x, to_y, &comms_buffer_start, start_idx);

    // Increment the recepient's buffer start by the size
    bsg_remote_store(to_x, to_y, &comms_buffer_start, start_idx + size);

    // Set the communication buffer metadata on the recepient for this ID
    bsg_remote_store(to_x, to_y, &comms_start_idx[id], start_idx);
    bsg_remote_store(to_x, to_y, &comms_size[id], size);

    // Write the actual value into the communication buffer on the recepient
    char *buffer_value_ptr = (void *)bsg_remote_ptr(to_x, to_y, 
        &comms_buffer[start_idx]);    
    copy(buffer_value_ptr, value, size);

    // Finally, write out to the recepient that this value is ready
    bsg_remote_store(to_x, to_y, &comms_ready[id], 1);
}

void send_return(void *value, int size, void *context) {
    copy(global_return, value, size);
}

void *_receive_shared(int size, int id, void *context) {
    // Wait patiently until the value is ready
    bsg_wait_while(!comms_ready[id]);

    // Metdata should already be written by sender
    int start_idx = comms_start_idx[id];
    int actual_size = comms_size[id];

    // Sanity check sizes match
    if (actual_size != size) {
        // TODO: error on device
    }

    // Return this address into the buffer
    return &comms_buffer[start_idx];
}

void *receive(int size, int from_core, int id, void *context) {
    void *value = _receive_shared(size, id, context);

    // Regular reads should be destructive: the value is no longer ready
    comms_ready[id] = 0;

    // Return this address into the buffer
    return value;
}

void *receive_argument(int size, int id, void *context) {
    // Argument reads should not be destructive
    return _receive_shared(size, id, context);;   
}

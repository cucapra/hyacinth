#include <stdint.h>

// Initializes the manycore device and returns a pointer to it
extern void *init();

// Lookup the EVA address for an argument by the communication symbol
int32_t address_for_symbol(char *symbol, void *context);

// Send an argument of a given size in bytes to the specified core, with a
// given communication ID. Context here is the device.
extern void send_argument(void *value, int32_t size, int32_t to_core,
    int32_t addr, void *context);

// Receive a return value back to the host. Context here is the device.
extern void *receive_return(int32_t size, void *context);

extern void retrieve_global(void *global, int32_t size, int32_t addr,
    void *context);

// Call to execute device code
extern void start_device_execution();

// Call after executing device code to clean up
extern void end_device_execution() ;
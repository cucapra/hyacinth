#include <stdint.h>

// Send a value of a given size in bytes to the specified core, with a
// given communication addr. Context is implementation-specific.
extern void send(void *value, int32_t size, int32_t to_core, int32_t addr, void *context);

// Blocking receive of a value of a given size in bytes from the specified core,
// with a given communication addr. Context is implementation-specific.
extern void *receive(int32_t size, int32_t from_core, int32_t addr, void *context);

// Called after a destructive reads (the same value cannot be read twice).
extern void free_comms(int32_t addr, int size, void *context);

// Blocking receive of an argument value from the host with a given
// communication addr. Context is implementation-specific. Receiving arguments is
// *not* destructive (the same value can be read multiple times).
extern void *receive_argument(int32_t size, int32_t addr, void *context);

// Send a return value back to the host. Context is implementation-specific.
extern void send_return(void *value, int32_t size, void *context);

// Send a token for synchronization. Context is implementation-specific.
extern void send_token(int to_core, int addr, void *context);

// Receive a token for synchronization. Context is implementation-specific.
extern void receive_token(int addr, void *context);

extern void *call_partitioned_functions(int num_functions,
    void (**function_pts)(void *), void *context);

// bsg_print_int wrapper
extern void print_int(int32_t i);

// bsg_print_int for both the address and the int32_t value at the address
extern void print_addr(void *a);
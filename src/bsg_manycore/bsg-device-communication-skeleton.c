#include <stdint.h>

void send(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {}
void *receive(int32_t size, int32_t from_core, int32_t addr, void *context) { return 0; }
void free_comms(int32_t addr, int size, void *context) {}
void *receive_argument(int32_t size, int32_t addr, void *context) { return 0; }
void send_return(void *value, int32_t size, void *context) {}
void send_token(int to_core, int addr, void *context) {}
void receive_token(int addr, void *context) {}
void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context) { return 0; }
void print_int(int32_t i) {}
void print_addr(void *a) {}
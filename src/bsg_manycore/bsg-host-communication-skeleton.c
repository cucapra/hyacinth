#include <stdint.h>

extern void *init() { return 0; }
int32_t address_for_symbol(char *symbol, void *context) { return 0; }
extern void send_argument(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {}
extern void *receive_return(int32_t size, void *context) { return 0; }
extern void retrieve_global(void *global, int32_t size, int32_t addr, void *context) {}
extern void start_device_execution() {}
extern void end_device_execution() {}
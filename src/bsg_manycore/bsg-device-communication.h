// Send a value of a given size in bytes to the specified core, with a 
// given communication ID. Context is implementation-specific.
extern void send(void *value, int size, int to_core, int id, void *context);

// Blocking receive of a value of a given size in bytes from the specified core,
// with a given communication ID. Context is implementation-specific. Receives 
// are destructive reads (the same value cannot be read twice). 
extern void *receive(int size, int from_core, int id, void *context);

// Blocking receive of an argument value from the host with a given 
// communication ID. Context is implementation-specific. Receiving arguments is
// *not* destructive (the same value can be read multiple times). 
extern void *receive_argument(int size, int id, void *context);

// Send a return value back to the host. Context is implementation-specific.
extern void send_return(void *value, int size, void *context);

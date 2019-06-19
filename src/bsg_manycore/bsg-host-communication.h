// Send an argument of a given size in bytes to the specified core, with a 
// given communication ID. Context here is the device.
extern void send_argument(void *value, int size, int to_core, int id,
    void *context);

// Receive a return value back to the host. Context here is the device.
extern void *receive_return(int size, void *context);
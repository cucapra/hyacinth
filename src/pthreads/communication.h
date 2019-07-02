
void *init();
void *call_partitioned_functions(int num_functions, 
    void (**function_pts)(void *), void *context);
void join_partitioned_functions(int num_functions, void *threads_arg);

void send(void *value, int size, int to_core, int id, void *context);
void *receive(int size, int from_core, int id, void *context);

void send_argument(void *value, int size, int to_core, int id, void *context);
void *receive_argument(int size, int id, void *context);

void send_return(void *value, int size, void *context);
void *receive_return(int size, void *context);

void send_token(int to_core, int id, void *context);
void receive_token(int id, void *context);
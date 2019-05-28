
void *init();
void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context);
void join_partitioned_functions(int num_functions, void *threads_arg);

void send(void *value, int size, int to_core, int id, void *context);
void *receive(int size, int from_core, int id, void *context);
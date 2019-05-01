
void *init();
void *call_partitioned_functions(int num_functions, void (**function_pts)(void *), void *context);
void join_partitioned_functions(int num_functions, void *threads_arg);
void send(double value, int to_core, int id, void *context);
double receive(int from_core, int id, void *context);

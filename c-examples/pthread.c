#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h> 
  
void *fun(void *vargp) { 
    printf("fun\n"); 
    return 0; 
} 
   
int main() { 
    pthread_t id; 
    printf("before thread\n"); 
    pthread_create(&id, 0, fun, 0); 
    pthread_join(id, 0); 
    printf("after thread\n"); 
    exit(0); 
}
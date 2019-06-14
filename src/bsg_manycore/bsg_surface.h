
extern int __bsg_x;
extern int __bsg_y;
#define bsg_x __bsg_x
#define bsg_y __bsg_y

#define bsg_global_X 4
#define bsg_global_Y 4
#define bsg_tiles_org_X 0
#define bsg_tiles_org_Y 1
#define bsg_tiles_X 2
#define bsg_tiles_Y 2

#define bsg_id_to_x(id) ((id) % bsg_tiles_X)
#define bsg_id_to_y(id) ((id) / bsg_tiles_X)
#define bsg_x_y_to_id(x,y) (bsg_tiles_X*(y) + (x))
#define bsg_num_tiles (bsg_tiles_X*bsg_tiles_Y)

// BSG might redefine later to do something more energy efficient
#define bsg_wait_while(cond) do {} while ((cond))

int bsg_set_tile_x_y();

void *bsg_remote_ptr(int x, int y, void *local_addr);
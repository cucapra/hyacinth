#define _BSD_SOURCE
#define _XOPEN_SOURCE 500
#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

#include <stdlib.h>
#include <string.h>

const size_t TILES_X = 4;
const size_t TILES_Y = 4;

hb_mc_device_t device;

int _align_size(int size) {
    return (size + 3) / 4 * 4;
}

int _load_symbol_to_eva(hb_mc_device_t *device, const char *symbol, hb_mc_eva_t *eva) {
    return hb_mc_loader_symbol_to_eva(device->program->bin, device->program->bin_size,
        symbol, eva);
}

void *init() {
    int err;

    err = hb_mc_device_init(&device, "example", 0);
    if (err) {
        fprintf(stderr, "hb_mc_device_init failed\n");
        return 0;
    }

    // Load the `fib.riscv` program to be run on device.
    err = hb_mc_device_program_init(&device, "device.riscv", "example", 0);
    if (err) {
        fprintf(stderr, "hb_mc_device_program_init failed\n");
        return 0;
    }

    hb_mc_dimension_t grid_dim = {.x = 1, .y = 1};
    hb_mc_dimension_t tg_dim = {.x = TILES_X, .y = TILES_X};
    err = hb_mc_application_init(&device, grid_dim, tg_dim, "device_execute", 0, NULL);
    if (err) {
        fprintf(stderr, "hb_mc_application_init failed\n");
        return 0;
    }

    // Return a pointer to the device as the context
    return &device;
}


int32_t address_for_symbol(char *symbol, void *context) {
    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    hb_mc_eva_t eva;
    int err = hb_mc_loader_symbol_to_eva(device->program->bin,
        device->program->bin_size, symbol, &eva);
    if (err) {
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return 0;
    }
    return eva;
}


void send_argument(void *value, int32_t size, int32_t to_core, int32_t addr, void *context) {
    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    // Round the value size plus 1 bye for the ready flag up to the nearest word.
    int aligned_size = _align_size(size + 1);

    // Create a local aligned memory to copy the value and ready flag from
    void *local_struct = malloc(aligned_size);
    memcpy(local_struct, value, size);

    // Ready is always offset from the address by the value size
    *(char *)(local_struct + size) = 1;

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Get the tile coordinate for each tile. Not that because the first row
    // is reserved for I/O, tile ID 0 corresponds to coordinate (0, 1) and
    // so on.
    hb_mc_coordinate_t tile_coordinate = device->mesh->tiles[to_core].coord;

    // Write the local struct to the tile's copy of the struct
    hb_mc_eva_t tile_struct_eva = (hb_mc_eva_t)addr;
    int err = hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &tile_struct_eva, local_struct, aligned_size);
    if (err) {
        fprintf(stderr, "hb_mc_manycore_eva_write failed\n");
    }
}

void retrieve_global(void *global, int32_t size, int32_t addr, void *context) {
    int aligned_size = (_align_size(size + 1)) * 9;

    void *aligned_space = malloc(aligned_size);

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Copy the DRAM value to the host value
    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device->mc);
    hb_mc_eva_t global_eva = (hb_mc_eva_t)addr;
    int err = hb_mc_manycore_eva_read(device->mc, &default_map, &host_coordinate,
        &global_eva, aligned_space, aligned_size);
    if (err) {
        fprintf(stderr, "hb_mc_manycore_eva_read failed\n");
    }

    memcpy(global, aligned_space, size);
}


void *receive_return(int32_t size, void *context) {
    int err;

    // HB memory operations require word-aligned pointers, *not* byte-aligned!
    int aligned_size = _align_size(size);

    void *value = malloc(aligned_size);

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Lookup the return EVA in DRAM
    hb_mc_eva_t global_return_eva;
    err = _load_symbol_to_eva(device, "return_struct", &global_return_eva);
    if (err != HB_MC_SUCCESS) {
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return NULL;
    }

    // EVA read the single return value
    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device->mc);
    err = hb_mc_manycore_eva_read(device->mc, &default_map, &host_coordinate,
        &global_return_eva, value, aligned_size);
    if (err) {
        fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
        return NULL;
    }

    return value;
}

void start_device_execution() {
    // Run the function.
    int err = hb_mc_device_tile_groups_execute(&device);
    if (err) {
        fprintf(stderr, "hb_mc_device_tile_groups_execute failed\n");
    }
}

void end_device_execution() {
    // Clean up.
    int err = hb_mc_device_finish(&device);
    if (err) {
        fprintf(stderr, "hb_mc_device_finish failed\n");
    }
}

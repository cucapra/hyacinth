#define _BSD_SOURCE
#define _XOPEN_SOURCE 500
#include <bsg_manycore_cuda.h>
#include <bsg_manycore_loader.h>

int _load_symbol_to_eva(hb_mc_device_t *device, const char *symbol, hb_mc_eva_t *eva) {
    return hb_mc_loader_symbol_to_eva(device->program->bin, device->program->bin_size, 
        symbol, eva);     
}

void send_argument(void *value, int size, int to_core, int id, void *context) {
    int err;

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Look up the communication buffer and metadata symbols. "EVA" is for 
    // "endpoint virtual address," and it represents an address in the device's
    // memory. An EVA is simply backed by a uint32_t, so we can do standard
    // pointer-type arithmetic on it to access array memory.
    hb_mc_eva_t buffer_eva, ready_eva, start_idx_eva, size_eva, start_eva; 
    err = _load_symbol_to_eva(device, "comms_buffer", &buffer_eva); 
    err |= _load_symbol_to_eva(device, "comms_ready", &ready_eva); 
    err |= _load_symbol_to_eva(device, "comms_start_idx", &start_idx_eva); 
    err |= _load_symbol_to_eva(device, "comms_size", &size_eva); 
    err |= _load_symbol_to_eva(device, "comms_buffer_start", &start_eva); 
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return;
    }

    int32_t int_size = sizeof(int32_t);

    // Get the tile coordinate for each tile. Not that because the first row 
    // is reserved for I/O, tile ID 0 corresponds to coordinate (0, 1) and
    // so on. 
    hb_mc_coordinate_t tile_coordinate = device->mesh->tiles[to_core].coord;

    // Read the start of the communication buffer to know where to write
    int32_t start;
    err = hb_mc_manycore_eva_read(device->mc, &default_map, &tile_coordinate,
        &start_eva, &start, int_size); 

    // Write the value to the current start of the communication buffer
    hb_mc_eva_t buffer_offset_eva = buffer_eva + start;
    err = hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &buffer_eva, value, size);

    // Then write the communication metadata values (array-based ones require
    // pointer arithmetic on the EVA values):
    // Ready flag
    int32_t ready = 1;
    hb_mc_eva_t ready_offset_eva = ready_eva + id * int_size;
    err |= hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &ready_offset_eva, &ready, int_size);

    // Start idx for the communication ID 
    hb_mc_eva_t start_idx_offset_eva = start_idx_eva + id * int_size;
    err |= hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &start_idx_offset_eva, &start, int_size); 

    // Size for the communication ID
    hb_mc_eva_t size_offset_eva = size_eva + id * int_size;
    err |= hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &size_offset_eva, &size, int_size);  

    // New start idx for that tile's buffer
    int32_t new_start = start + size;
    err |= hb_mc_manycore_eva_write(device->mc, &default_map, &tile_coordinate,
        &start_eva, &new_start, int_size);  
}

void *receive_return(int size, void *context) {
    int err;
    void *value = malloc(size);

    // Context is the device
    hb_mc_device_t *device = (hb_mc_device_t *)context;

    // Lookup the return EVA in DRAM
    hb_mc_eva_t global_return_eva; 
    err = _load_symbol_to_eva(device, "global_return", &global_return_eva);
    if (err != HB_MC_SUCCESS) { 
        fprintf(stderr, "hb_mc_loader_symbol_to_eva failed\n");
        return NULL;
    }

    // EVA read the single return value
    hb_mc_coordinate_t host_coordinate = hb_mc_manycore_get_host_coordinate(device->mc); 
    err = hb_mc_manycore_eva_read(device->mc, &default_map, &host_coordinate,
        &global_return_eva, value, size); 
    if (err) {
        fprintf(stderr, "hb_mc_device_memcpy to host failed\n");
        return NULL;
    }
    return value;
}
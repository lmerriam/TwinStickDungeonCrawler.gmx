#define scr_load_game
///scr_load_game()
// Open the save file and decode it to a ds_map
var file = file_text_open_read(working_directory + "save.txt");
var save_data = json_decode(file_text_read_string(file));
file_text_close(file);

// Clear the inventory
ds_grid_clear(global.inventory_slots, noone);

// Load the inventory
inventory_data = save_data[? "Inventory"];

for (column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (row = 0; row < ds_grid_height(global.inventory_slots); row++) {

        // Get the inventory slot and find the related item
        var slot = (row*4)+column;
        var item_data = ds_map_find_value(inventory_data, string(slot));

        // Populate the slot with the correct item
        if (!is_undefined(item_data[? "object_index"])) {
            global.inventory_slots[# column,row] = scr_load_instance(item_data);
        }
    }
}
with(Drop_Parent) scr_update_drop_tooltip();

// Load instances
// First destroy existing
/*
with (Spawner_Parent) instance_destroy();

var instance_data = save_data[? "Instances"];

var current_key = ds_map_find_first(instance_data);
for (var i = 0; i < ds_map_size(instance_data); i++) {
    var inst = instance_data[? current_key];
    scr_load_instance(inst);
    current_key = ds_map_find_next(instance_data,current_key);
}
*/

// Clean up after yourself
ds_map_destroy(save_data);

#define scr_save_game
///scr_save_game()

// Create map to save inventory to
var inventory_data = ds_map_create()

// Iterate through inventory
for (column = 0; column < ds_grid_width(global.inventory_slots); column++) {
    for (row = 0; row < ds_grid_height(global.inventory_slots); row++) {

        // Activate the item in this slot
        var item = ds_grid_get(global.inventory_slots,column,row);// global.inventory_slots[# column, row];

        // Get slot so we can return it to the right place
        var slot = (row*4) + column;

        // Save the items data to it's own map
        var item_data = ds_map_create();
        if (item != noone) {
            scr_save_instance(item,item_data);
        }
        // Nest the item_data map
        ds_map_add_map(inventory_data,slot,item_data);
    }
}

// Save spawners
//var instance_data = ds_map_create();
//instance_activate_object(Spawner_Parent);
//with (Spawner_Parent) scr_save_instance(id,instance_data);

// Combine all the maps and save dat shit
var save_data = ds_map_create();
ds_map_add_map(save_data,"Inventory",inventory_data);
//ds_map_add_map(save_data,"Instances",instance_data);

// Open the save file and save the data to it
var file = file_text_open_write(working_directory + "save.txt");
file_text_write_string(file,json_encode(save_data));
file_text_close(file);
ds_map_destroy(save_data);

#define scr_save_instance
///scr_save_instance(instance,map_to_save_to)
inst = argument0;
map = argument1;

// Save object index (we will create the object from this when loading)
map[? "object_index"] = inst.object_index;

// Save the item's stats
ds_map_add_map(map,"Stats",inst.stats);

// Save the item's position
map[? "x"] = inst.x;
map[? "y"] = inst.y;
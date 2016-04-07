///scr_send_to_inv(id)
var drop = argument[0];

// Find an inventory slot
var space = false;
var slots = Inventory.slots;

for (row = 0; row < Inventory.grid_height; row++) {
    for (column = 0; column < Inventory.grid_width; column++) {
        if (slots[# column,row] = noone) {
            // Assign to cell
            slots[# column,row] = drop;
            
            // Deactivate the object
            // Move it out of room so it isn't reactivated by view
            drop.phy_position_x = -999;
            drop.phy_position_y = -999;
            drop.persistent = true;
            instance_deactivate_object(drop);
            
            // Return the fact that a slot was found
            space = true;
            return space;
        }
    }
}

if (space = false) show_message("No room in inventory");

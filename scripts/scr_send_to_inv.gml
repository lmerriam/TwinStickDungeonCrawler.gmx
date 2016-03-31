///scr_send_to_inv(id)
var drop = argument[0];

// Find an inventory slot
var space = false;
for (i=0; i<Inventory.num_cells; i++) {
    slot = Inventory.cells[i];
    if (slot = 0) {
        // Assign to cell
        Inventory.cells[i] = drop;
        
        // Deactivate the object
        // Move it out of room so it isn't reactivated by view
        drop.phy_position_x = -999;
        drop.phy_position_y = -999;
        instance_deactivate_object(drop);
        
        // Return the fact that a slot was found
        space = true;
        break;
    }
}

if (space = false) show_message("No room in inventory");

return space;

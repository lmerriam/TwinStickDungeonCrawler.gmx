///scr_inv_add_item(x,y,item)
var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

// Check for out of range
if (xx != median(0, xx, Inventory.width-1) or yy != median(0, yy, Inventory.height-1)) {
    show_debug_message("The x and y are outside of the range");
    exit;
}

// Get the item count
var item_count = Inventory.count[# xx, yy];

if (item_count == 0) {
    // Add the item
    Inventory.box[# xx, yy] = add_item;
    
    // Add to the count
    Inventory.count[# xx, yy]++;
    
    // Return back out
    return true; // We were able to add the item
    
} else if (item_count > 0) {
    // There is already an item here
    // Is the item we are adding the same?
    if (Inventory.box[# xx, yy] = add_ite) {
        // Add to count
        Inventory.count[# xx, yy]++;
        return true; // We were able to add the item
    } else {
        show_debug_message("There is already an item there");
        return false;
    }
} else {
    show_error("Item count is less than 0", false);
}

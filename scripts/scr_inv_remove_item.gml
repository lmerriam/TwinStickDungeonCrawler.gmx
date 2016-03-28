/// scr_inv_remove_item(x,y)
xx = argument[0];
yy = argument[1];

// Check for out of range
if (xx != median(0, xx, Inventory.width-1) or yy != median(0, yy, Inventory.height-1)) {
    show_debug_message("The x and y are outside of the range");
    exit;
}

// Get the item count
var item_count = Inventory.count[# xx, yy];

// Make sure we have items
if (item_count > 0) {
    // Take 1 from item count
    Inventory.count[# xx, yy]--;
    
    // Make reference to remove item before removing it
    var remove_item = Inventory.box[# xx, yy];
    
    // Check for last item
    if (item_count = 1) {
        // Set item box to empty
        Inventory.box[# xx, yy] = item.none;
    }
    
    // Return the removed item so we can do stuff with it
    return remove_item;
    
} else if (item_count == 0) {
    show_debug_message("There was not an item at that location")
    return item.none;
} else {
    show_error("The item count is less than 0", false);
}

/// scr_inv_pickup_item(item)
var add_item = argument[0];

// Check for add item already in inventory
for (var yy = 0; yy < Inventory.height; yy++) {
    for (var xx = 0; xx < Inventory.width; xx++) {
        if (Inventory.box[# xx, yy] == add_item) {
            Inventory.count[# xx, yy]++;
            return true;
        }
    }
}

// Check for an empty slot
for (var yy = 0; yy < Inventory.height; yy++) {
    for (var xx = 0; xx < Inventory.width; xx++) {
        if (Inventory.box[# xx, yy] == item.none) {
            Inventory.box[# xx, yy] = add_item;
            Inventory.count[# xx, yy]++;
            return true;
        }
    }
}

show_debug_message("Inventory is full");
return false;


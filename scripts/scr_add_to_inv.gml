///scr_add_to_inv(name)

var to_name = argument[0];

for (i = 0; i < Inventory.total_slots; i++) {
    if (i = Inventory.total_slots-1) {
        for (j = 0; j<Inventory.total_slots; j++) {
            if (global.slot[j] == "noone") {
                global.slot[j] = to_name;
                scr_add_list(to_name);
                break;
            }
        }
    }
}

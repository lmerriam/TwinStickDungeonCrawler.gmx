///scr_equip(obj)
obj = argument[0];
var inst = obj.object_index;

if (object_is_ancestor(inst,Drop_Weapon_Parent)) {
    global.equipment_slots[# 0,0] = obj;
} else if (object_is_ancestor(inst,Drop_Scroll_Parent)) {
    global.equipment_slots[# 0,1] = obj;
} else if (object_is_ancestor(inst,Drop_Armor_Parent)) {
    global.equipment_slots[# 0,2] = obj;
} else if (object_is_ancestor(inst,Drop_Gem_Parent)) {
    global.equipment_slots[# 0,3] = obj;
} else {
    show_message("Cant equip that object");
}

// Update drop tooltips
with(Drop_Parent) scr_update_drop_tooltip(object_index);

if (obj.persistent = false) obj.persistent = true;
obj.phy_position_x = -999;
obj.phy_position_y = -999;

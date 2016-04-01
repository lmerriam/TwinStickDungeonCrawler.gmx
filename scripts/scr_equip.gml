///scr_equip(obj)
obj = argument[0];
var inst = obj.object_index;

if (object_is_ancestor(inst,Drop_Weapon_Parent)) {
    global.current_weapon = obj;
} else if (object_is_ancestor(inst,Drop_Scroll_Parent)) {
    global.current_spell = obj;
} else if (object_is_ancestor(inst,Drop_Armor_Parent)) {
    global.current_armor = obj;
} else if (object_is_ancestor(inst,Drop_Gem_Parent)) {
    global.current_gem = obj;
} else {
    show_message("Cant equip that object");
}

if (obj.persistent = false) obj.persistent = true;
obj.phy_position_x = -999;
obj.phy_position_y = -999;

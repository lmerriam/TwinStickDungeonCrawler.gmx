/// scr_handle_deactivation

// Deactivate all instances
instance_deactivate_all(true);

// Activate menu object (or all onscreen objects if no menu is up)
if (current_menu != noone) {
    for (i=0; i<ds_list_size(current_menu);i++) {
        instance_activate_object(current_menu[| i]);
    }
    switch current_menu {
        case store:
        case inventory:
            scr_activate_inv();
        case map:
            scr_activate_map();            
    }
} else {
    scr_activate_onscreen_instances();
}

/// scr_handle_deactivation(menu_obj)
var menu = argument[0];

// Deactivate all instances
instance_deactivate_all(true);

// Activate menu object (or all onscreen objects if no menu is up)
if (menu != noone) {
    instance_activate_object(menu);
} else {
    scr_activate_onscreen_instances();
    instance_activate_object(Menu_Parent);
}

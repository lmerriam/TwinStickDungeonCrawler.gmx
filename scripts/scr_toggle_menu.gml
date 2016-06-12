/// scr_toggle_menu(menu)
var menu = argument0;

// If the menu open variable is now on, send the menu object to the deactivation handler
if (current_menu != menu) {
    current_menu = menu;
    scr_handle_deactivation();
} else {
    // Make sure we know we're not in a menu
    current_menu = noone;
    scr_handle_deactivation();
}

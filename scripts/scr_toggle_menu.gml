/// scr_toggle_menu(variable,menu_obj)
var variable = argument[0];
var menu = argument[1];

// Toggle the var that keeps track of this particular menu being open
variable = scr_toggle(variable);

// If the menu open variable is now on, send the menu object to the deactivation handler
if (variable) {
    // Make sure we know we're in a menu
    in_menu = true;
    scr_handle_deactivation(menu);
    menu.x = x;
    menu.y = y;
} else {
    // Make sure we know we're not in a menu
    in_menu = false;
    scr_handle_deactivation(noone);
}

return variable;

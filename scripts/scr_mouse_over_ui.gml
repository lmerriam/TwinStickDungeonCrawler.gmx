/// scr_mouse_over_ui(x1,y1,x2,y2)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var mousex = window_mouse_get_x();
var mousey = window_mouse_get_y();

if (mousex > x1 and mousex < x2 and mousey > y1 and mousey < y2) {
    return true;
} else {
    return false;
}

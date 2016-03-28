///scr_manage_objects(cell_width,cell_height)
var cell_width = argument[0];
var cell_height = argument[1];

for (i = 0; i<total_slots; i++) {
    if (global.slot[i] == "gun") {
        draw_sprite(spr_gun, 0, coord_x[i]+8, coord_y[i]+8);
        draw_text(coord_x[i]+3, coord_y[i]+3, string(global.gun));
    }
}

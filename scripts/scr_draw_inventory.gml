///scr_draw_inventory(ds_grid,slot_width,offset_left,offset_right)

for (column = 0; column < grid_width; column++) {
    for (row = 0; row < grid_height; row++) {
        var x1 = column * slot_width + left_padding;
        var y1 = row * slot_width + top_padding;
        var x2 = x1 + slot_width;
        var y2 = y1 + slot_width;
        
        scr_draw_inv_slot(x1,y1,x2,y2,slots[# column,row]);
    }
}

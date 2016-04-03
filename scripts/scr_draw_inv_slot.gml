///scr_draw_inv_slot(x1,y1,x2,y2,obj)
x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
obj = argument[4];

draw_rectangle(x1,y1,x2,y2,false);
if(obj != noone and obj != global.drag_item) {
    draw_sprite_ext(obj.sprite_index, 0,x1+(slot_width/2),y1+(slot_width/2),3,3,45,c_white,1);
}

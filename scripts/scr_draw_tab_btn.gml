///scr_draw_btn(button_array)
var btn = argument0;
var x1 = btn[0];
var y1 = btn[1];
var width = btn[2];
var height = btn[3];
var text = btn[4];

draw_set_color(c_black);
draw_rectangle(x1,y1,x1+width,y1+height,false);

draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_text(x1+(width/2),y1+(height/2)-16,text);

draw_set_halign(fa_left);

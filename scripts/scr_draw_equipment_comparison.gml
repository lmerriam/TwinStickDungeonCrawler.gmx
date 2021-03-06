///scr_draw_equipment_comparison(text,x_offset,y_offset,width)
var text = argument[0];
var x_offset = argument[1];
var y_offset = argument[2];
var width = argument[3];

var line_count = array_height_2d(text);

var padding = 3;

draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle( x+x_offset, y+y_offset, x+x_offset+width, y+y_offset+line_count*8+padding, false);

draw_set_color(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) {
    draw_set_color(text[i,2]);
    var finaltext = text[i,0] + " " + text[i,1];
    draw_text_transformed(x+x_offset+padding, y+y_offset+(8*i)+padding, finaltext, .3, .3, 0);
}
draw_set_color(c_white);

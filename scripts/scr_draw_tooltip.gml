///scr_draw_tooltip(text,x_offset,y_offset, width)
var text = argument[0];
var x_offset = argument[1];
var y_offset = argument[2];
var width = argument[3];

var line_count = array_length_1d(text);

var padding = 3;

draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle( x+x_offset, y+y_offset, x+x_offset+width, y+y_offset+line_count*8+padding, false);

draw_set_color(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) { 
    
    draw_text_transformed(x+x_offset+padding, y+y_offset+(8*i)+padding, text[i], .3, .3, 0);
}

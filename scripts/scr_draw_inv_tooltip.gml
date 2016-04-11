///scr_draw_equipment_comparison(text,xx,yy,width)
var text = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var line_count = array_height_2d(text);

var padding = 3;

draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle( xx, yy, xx+width, yy+line_count*20+padding, false);

draw_set_color(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) {
    draw_set_color(text[i,2]);
    var finaltext = text[i,0] + " " + text[i,1];
    draw_text_transformed(xx+padding, yy+(20*i)+padding, finaltext, 1, 1, 0);
}
draw_set_color(c_white);

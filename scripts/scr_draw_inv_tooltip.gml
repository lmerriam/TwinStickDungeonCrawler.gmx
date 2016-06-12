///scr_draw_inv_tooltip(text,xx,yy,width)
var text = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var line_count = array_height_2d(text);

var padding = 3;

// Draw tooltip box
draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, false);

draw_set_color(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) {
    var xcur = inv_tooltip_x+padding;
    var ycur = inv_tooltip_y+(inv_tooltip_line_height*i)+padding;
    
    // Draw current line of text
    draw_set_color(text[i,2]);
    var finaltext = text[i,0] + " " + text[i,1];
    draw_text_transformed(xcur, ycur, finaltext, 1, 1, 0);
}

// Draw de eqp button
if (eqp_btn) {
    draw_rectangle_colour(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2,c_green,c_green,c_green,c_green,false);
    draw_set_halign(fa_center);
    draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,"Equip");
}

// Reset stuff
draw_set_halign(fa_left);
draw_set_color(c_white);

/// scr_move_state
if (len == 0) {
    dir = face*90;
}
len = spd*4;

// Calculate hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move the player
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index; // Get our current sprite and assign it to the dash sprite
dash.image_index = image_index; // Same for the image index (current frame of the sprite animation)

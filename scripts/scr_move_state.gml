/// scr_move_state
scr_get_input();

// Set dash state if button pressed
if (dash_key) {

    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    var speaker = instance_place(x+xdir, y+ydir, obj_speaker);
    
    if (speaker != noone) {
        /// Talk to it
        with (speaker) {
            if (!instance_exists(dialog)) {
                dialog = instance_create(x+x_offset, y+y_offset, obj_dialog);
                dialog.text = text;
            } else {
                dialog.text_page++;
                dialog.text_count = 0;
                if (dialog.text_page > array_length_1d(dialog.text)-1) {// If you go over array length, 
                    with (dialog) {
                        instance_destroy();
                    }
                }
            }
        }
    } else if (obj_player_stats.stamina >= 5) {
        /// Dash
        state = scr_dash_state;
        alarm[0] = room_speed/6;
        obj_player_stats.stamina -= 5;
        obj_player_stats.alarm[0] = room_speed*2;
    }
}

// Set dash state if button pressed
if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

// Get the axis (this is tricky!)
var xaxis = (right_key - left_key)
var yaxis = (down_key - up_key)

// Get direction
move_dir = point_direction(0,0,xaxis, yaxis);

// Get length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

// Calculate hspd and vspd
hspd = lengthdir_x(len,move_dir);
vspd = lengthdir_y(len,move_dir);

// Move the player
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2;

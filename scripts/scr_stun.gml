///scr_stun(enemy_obj,duration)
var enemy = argument0;
var dur = argument1;

enemy.state = scr_enemy_stall_state;
enemy.alarm[1] = dur * room_speed;

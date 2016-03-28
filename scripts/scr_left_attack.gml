///scr_left_attack()
var dir = point_direction(x,y,mouse_x,mouse_y)
var target_x = lengthdir_x(obj_player_stats.attack_range,dir);
var target_y = lengthdir_y(obj_player_stats.attack_range,dir);

var damage = instance_create(x+target_x, y+target_y, obj_damage);
damage.creator = id;
damage.knockback = 5;

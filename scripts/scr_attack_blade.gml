///scr_attack_blade(creator)
var dir = point_direction(x,y,mouse_x,mouse_y)
var target_x = lengthdir_x(attack_range,dir);
var target_y = lengthdir_y(attack_range,dir);

scr_damage(x+target_x,y+target_y,Attack_Radius,Player.id,Player.damage,global.current_weapon.knockback,global.current_gem.buffs);
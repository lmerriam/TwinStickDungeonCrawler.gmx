/// scr_damage_create(x,y,dmg_obj,creator)
targetx = argument[0];
targety = argument[1];
dmg_obj = argument[2];
creator = argument[3];

var damage = instance_create(targetx, targety, dmg_obj);
damage.creator = creator;


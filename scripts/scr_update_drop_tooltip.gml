///scr_update_drop_tooltip(object_index)
// TODO: find some way of comparing directly from the drop stats without constructing these fucking things
drop_index = argument[0];

text[0,0] = string(name);
text[0,1] = "";
text[0,2] = c_white;

text[1,0] = "Level " + string(stats[? "Level"]);
text[1,1] = "";
text[1,2] = c_white;

/*
if (object_get_parent(drop_index) == Drop_Weapon_Parent) {
    var weapon = scr_get_weapon();
    
    //Name
    text[0,0] = string(name);
    text[0,1] = "";
    text[0,2] = c_white;
    //Level
    var level_compare = scr_compare_to_equipped(level,weapon.level,1);
    text[1,0] = "Level " + string(level);
    text[1,1] = level_compare[0];
    text[1,2] = level_compare[1];
    //Damage
    var damage_compare = scr_compare_to_equipped(damage,weapon.damage,1);
    text[2,0] = "Damage: " + string(damage);
    text[2,1] = damage_compare[0];
    text[2,2] = damage_compare[1];
    //Knockback
    var knockback_compare = scr_compare_to_equipped(knockback,weapon.knockback,1);
    text[3,0] = "Knockback: " + string(knockback);
    text[3,1] = knockback_compare[0];
    text[3,2] = knockback_compare[1];
    //Attack speed
    var cd_compare = scr_compare_to_equipped(cd,weapon.cd,-1);
    text[4,0] = "Atk Delay: " + string(cd);
    text[4,1] = cd_compare[0];
    text[4,2] = cd_compare[1];
    
} else if (object_get_parent(drop_index) == Drop_Scroll_Parent) {
    var spell = scr_get_spell();
    //Name
    text[0,0] = string(name);
    text[0,1] = "";
    text[0,2] = c_white;
    //Level
    var level_compare = scr_compare_to_equipped(level,spell.level,1);
    text[1,0] = "Level " + string(level);
    text[1,1] = level_compare[0];
    text[1,2] = level_compare[1];
    //Damage
    var damage_compare = scr_compare_to_equipped(damage,spell.damage,1);
    text[2,0] = "Damage: " + string(damage);
    text[2,1] = damage_compare[0];
    text[2,2] = damage_compare[1];
    //Cooldown
    var cd_compare = scr_compare_to_equipped(cd,spell.cd,-1);
    text[3,0] = "Cooldown: " + string(cd);
    text[3,1] = cd_compare[0];
    text[3,2] = cd_compare[1];
    //Fatigue
    var fatigue_compare = scr_compare_to_equipped(fatigue,spell.fatigue,-1);
    text[4,0] = "Fatigue: " + string(cd);
    text[4,1] = fatigue_compare[0];
    text[4,2] = fatigue_compare[1];
    
} else if (object_get_parent(drop_index) == Drop_Armor_Parent) {
    var armor = scr_get_armor();
    //Name
    text[0,0] = string(name);
    text[0,1] = "";
    text[0,2] = c_white;
    //Level
    var level_compare = scr_compare_to_equipped(level,armor.level,1);
    text[1,0] = "Level " + string(level);
    text[1,1] = level_compare[0];
    text[1,2] = level_compare[1];
    //Defense
    var def_compare = scr_compare_to_equipped(defense,armor.defense,1);
    text[2,0] = "Defense: " + string(defense);
    text[2,1] = def_compare[0];
    text[2,2] = def_compare[1];
    //Damage
    var spd_compare = scr_compare_to_equipped(spd,armor.spd,1);
    text[3,0] = "Speed: " + string(spd);
    text[3,1] = spd_compare[0];
    text[3,2] = spd_compare[1];
    //Knockback
    var stamina_regen_compare = scr_compare_to_equipped(stamina_regen,armor.stamina_regen,1);
    text[4,0] = "Stam Regen: " + string(stamina_regen);
    text[4,1] = stamina_regen_compare[0];
    text[4,2] = stamina_regen_compare[1];
    //Attack speed
    var hp_regen_compare = scr_compare_to_equipped(hp_regen,armor.hp_regen,1);
    text[5,0] = "HP Regen: " + string(hp_regen);
    text[5,1] = hp_regen_compare[0];
    text[5,2] = hp_regen_compare[1];
    
} else if (object_get_parent(drop_index) == Drop_Gem_Parent) {

}
*/

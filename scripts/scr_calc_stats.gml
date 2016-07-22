///scr_calc_stats
var armor = scr_get_armor();
var spell = scr_get_spell();
var weapon = scr_get_weapon();
var gem = scr_get_gem();

// Stat totals
maxstamina = base_maxstamina + scr_armor_stat("Stamina");
maxhp = base_maxhp + scr_armor_stat("Health");
spd = (base_spd + scr_armor_stat("Speed")) * (30/room_speed) * global.timescale;
hp_regen = scr_armor_stat("Health Regen");
stamina_regen = scr_armor_stat("Stamina Regen");

// Weapon totals
damage = base_damage + weapon.stats[? "Damage"];
knockback = weapon.stats[? "Knockback"];

// Spell totals
spell_damage = spell.stats[? "Stamina"];
spell_knockback = spell.stats[? "Knockback"];
spell_cd = spell.stats[? "Cooldown"];
spell_fatigue = spell.stats[? "Fatigue"];

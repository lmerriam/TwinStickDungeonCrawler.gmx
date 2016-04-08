///scr_calc_stats
var armor = scr_get_armor();
var spell = scr_get_spell();
var weapon = scr_get_weapon();
var gem = scr_get_gem();

// Stat totals
maxstamina = base_maxstamina + armor.stamina;
maxhp = base_maxhp + armor.hp;
spd = (base_spd + armor.spd) * (30/room_speed);
hp_regen = armor.hp_regen;
stamina_regen = armor.stamina_regen;

// Weapon totals
damage = base_damage + weapon.damage;
knockback = weapon.knockback;

// Spell totals
spell_damage = spell.damage;
spell_knockback = spell.knockback;
spell_cd = spell.cd;
spell_fatigue = spell.fatigue;

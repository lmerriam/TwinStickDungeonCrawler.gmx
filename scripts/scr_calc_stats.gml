///scr_calc_stats
var armor = global.current_armor;
var spell = global.current_spell;
var weapon = global.current_weapon;
var gem = global.current_gem;

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

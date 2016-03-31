///scr_calc_stats

// Stat totals
maxstamina = base_maxstamina + global.current_armor.stamina;
maxhp = base_maxhp + global.current_armor.hp;
spd = (base_spd + global.current_armor.spd) * (30/room_speed);
hp_regen = global.current_armor.hp_regen;
stamina_regen = global.current_armor.stamina_regen;

// Weapon totals
damage = base_damage + global.current_weapon.damage;
knockback = global.current_weapon.knockback;

// Spell totals
spell_damage = global.current_spell.damage;
spell_knockback = global.current_spell.knockback;
spell_cd = global.current_spell.cd;
spell_fatigue = global.current_spell.fatigue;

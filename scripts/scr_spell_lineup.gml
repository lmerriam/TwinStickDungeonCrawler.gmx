///scr_spell_lineup
for (i=1;i<=7;i++) {
    var dir = global.mousedir;
    var len = 24*i;
    var xx = Player.x + lengthdir_x(len,dir);
    var yy = Player.y + lengthdir_y(len,dir);
    var spell = instance_create(xx, yy, Spell_Lineup);
    spell.creator = Player.id;
    spell.alarm[0] = .25 * room_speed;
}

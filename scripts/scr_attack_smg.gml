///scr_attack_pistol
var bullet = instance_create(x, y, Attack_Bullet);
bullet.creator = Player.id;
bullet.damage = Player.damage;
bullet.aim_vary = 10;

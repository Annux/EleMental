MaxHP = 500;
HP = MaxHP;
enemyXp = 1000;
bSpeed = 0;

movePath = path_add();

Attacking = false;
Fightmode = false
Facing = false


Lclaw_x = x + lengthdir_x(30, image_angle + 10)
Lclaw_y = y + lengthdir_y(30, direction + 10)

Rclaw_x = x +lengthdir_x(30, direction  - 10)
Rclaw_y = y + lengthdir_y(30, direction - 10)

Lclaw = instance_create(Lclaw_x,Lclaw_y,obj_claw)
Rclaw = instance_create(Rclaw_x,Rclaw_y,obj_claw)

curClaw = Rclaw

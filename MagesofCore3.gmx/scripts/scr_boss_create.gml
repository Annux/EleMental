instance_deactivate_object(objElementalParent)

MaxHP = 100;
HP = MaxHP;
enemyXp = 100;
bSpeed = 0;

movePath = path_add();

Attacking = false;
Fightmode = false
Facing = false
canMove = true

Lclaw_x = x + lengthdir_x(30, image_angle + 10)
Lclaw_y = y + lengthdir_y(30, direction + 10)

Rclaw_x = x +lengthdir_x(30, direction  - 10)
Rclaw_y = y + lengthdir_y(30, direction - 10)

Lclaw = instance_create(Lclaw_x,Lclaw_y,obj_claw)
Rclaw = instance_create(Rclaw_x,Rclaw_y,obj_claw)

curClaw = Rclaw

//Damage Scripts
fireDamage  = 0
earthDamage = 0
waterDamage = 0
airDamage   = 0

fireRatio  = 1
earthRatio = 1.2
waterRatio = .8
airRatio   = 1

blownBack = false
blowBackCaster = 0;
Stunned = false
StunCD = 0

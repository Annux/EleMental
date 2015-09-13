MaxHP = 15;
HP = MaxHP;
enemyXp = 15;
rSpeed = 0;
image_speed = 0.1;

isAttacking = false;
blownBack = false;
blowBackCaster = 0;

targetX = random(room_width);
targetY = random(room_height);

alarm[0] = room_speed * 3;

//Damage Scripts
fireDamage  = 0
earthDamage = 0
waterDamage = 0
airDamage   = 0

fireRatio  = .75
earthRatio = .75
waterRatio = 1.5
airRatio   = .75

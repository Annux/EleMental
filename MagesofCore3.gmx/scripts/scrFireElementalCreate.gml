POW = 10
INT = 5
SPD = 30

MaxHP = 7;
HP = MaxHP;
enemyXp = 15;
moveSpeed = 5 + (SPD*.15)

isAttacking = false;
blownBack = false;
blowBackCaster = 0;

targetX = random(room_width);
targetY = random(room_height);

alarm[0] = room_speed * 3;

image_speed = 10;


//Damage Scripts
fireDamage  = 0
earthDamage = 0
waterDamage = 0
airDamage   = 0

fireRatio  = .6
earthRatio = 1
waterRatio = 2
airRatio   = 1.25

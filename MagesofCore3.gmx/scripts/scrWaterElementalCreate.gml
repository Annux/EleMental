MaxHP = 10;
HP = MaxHP;
enemyXp = 15;
eSpeed = 0;

canMove = true
isAttacking = false;
blownBack = false;
blowBackCaster = 0;
StunCD = 0
Stunned = false

targetX = random(room_width);
targetY = random(room_height);

alarm[0] = room_speed * 3;

//Damage Scripts
fireDamage  = 0
earthDamage = 0
waterDamage = 0
airDamage   = 0

fireRatio  = 1.5
earthRatio = 1
waterRatio = .6
airRatio   = 1

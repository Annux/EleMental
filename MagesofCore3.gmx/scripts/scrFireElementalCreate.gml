POW = 10
INT = 5
SPD = 30

MaxHP = 10;
HP = 10;
enemyXp = 10;
moveSpeed = 5 + (SPD*.15)

isAttacking = false;
blownBack = false;
blowBackCaster = 0;

targetX = random(room_width);
targetY = random(room_height);

alarm[0] = room_speed * 3;

image_speed = 10;

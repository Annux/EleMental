if (random(100)>90) && (global.enemyCounter < 30) && (!global.bossSpawned)
{
    instance_create(x, y, objWaterElemental)
    global.enemyCounter += 1
}
alarm[0] = room_speed * 30;

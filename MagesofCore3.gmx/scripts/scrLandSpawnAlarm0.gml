if (random(100)>90) && (global.enemyCounter < 30) && (!global.bossSpawned)
{
    choose
    (
        instance_create(x, y, objFireElemental),
        instance_create(x, y, objEarthElemental)
    )
    global.enemyCounter += 1
}
alarm[0] = room_speed * 30;

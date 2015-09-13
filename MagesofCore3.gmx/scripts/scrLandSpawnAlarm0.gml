if (random(100)>90)
{
    choose
    (
        instance_create(x, y, objFireElemental),
        instance_create(x, y, objEarthElemental)
    )
}
alarm[0] = room_speed * 30;

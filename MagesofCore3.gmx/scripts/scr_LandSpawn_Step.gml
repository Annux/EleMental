if (canSpawn)
{
    choose
    (
        instance_create(x, y, objFireElemental),
        instance_create(x, y, objEarthElemental)
    )
    canSpawn = false
}
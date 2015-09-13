if (canSpawn)
{
    if(random_range(0,2) > 1)
        {instance_create(x, y, objFireElemental)}
    else
        {instance_create(x, y, objEarthElemental)}
    canSpawn = false
}
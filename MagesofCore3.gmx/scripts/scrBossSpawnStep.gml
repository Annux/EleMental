if (obj_player.bossSpawnReady >= 30) && (bossSpawned = false)
{
    instance_create(x, y, crabboss);
    bossSpawned = true;
}

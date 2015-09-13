if (obj_player.bossSpawnReady >= objOverworldController. levelReq) && (bossSpawned = false)
{
    instance_create(x, y, crabboss);
    global.bossSpawned = true;
}

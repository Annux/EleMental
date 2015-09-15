if (obj_player.bossSpawnReady >= objOverworldController. levelReq) && (global.bossSpawned = false)
{
    instance_create(x, y, crabboss);
    global.bossSpawned = true;
}

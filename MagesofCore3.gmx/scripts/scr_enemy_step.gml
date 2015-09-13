if(HP < 0)
{
    obj_player.bossSpawnReady += 1;
    objOverwatch.expGained += 10;
    instance_destroy();
}
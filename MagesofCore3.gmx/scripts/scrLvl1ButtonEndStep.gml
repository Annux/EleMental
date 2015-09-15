if (worldGoTo = true)
{
    instance_create(x, y, objFlash);
    worldGoTo = false;
}
if (objOverworldController.Level1Cleared = true)
{
    sprite_index = sprClearedButton;
}

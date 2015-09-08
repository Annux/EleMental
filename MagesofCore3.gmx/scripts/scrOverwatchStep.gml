if (totalExp >= i)
{
    playerLevel += 1;
    //totalExp = 0;
    levelUp = true;
}

if (levelUp = true)
{
    remainingExp = (currentExp + expGained) - i;
    currentExp = 0 + remainingExp;
    remainingExp = 0;
    playerHealth += 50;
    totalExp = currentExp;
    i = 100 * playerLevel;
    if (obj_player.priElem = 1)
    {
        obj_player.POW += 2;
    }
    if (obj_player.priElem = 2)
    {
        obj_player.END += 2;
    }
    if (obj_player.priElem = 3)
    {
        obj_player.DEF += 2;
    }
    if (obj_player.priElem = 4)
    {
        obj_player.SPD += 2;
    }
    obj_player.POW += 1;
    obj_player.END += 1;
    obj_player.DEF += 1;
    obj_player.SPD += 1;
    obj_player.RES += 1;
    obj_player.INT += 1;
    levelUp = false;
}

if (expGained != 0) && (currentExp != (totalExp + expGained))
{
    currentExp += 1;
    if (currentExp = (totalExp + expGained))
    {
        expGainReset = true;
    }
}

if (expGainReset = true)
{
    lifetimeExp += expGained;
    expGained = 0;
    totalExp = currentExp;
    expGainReset = false;
}

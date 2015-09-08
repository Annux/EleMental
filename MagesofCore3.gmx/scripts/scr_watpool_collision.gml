if(caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id) // if its the player's ball, it has to hit something else. If its an enemy ball, it has to hit the player.
{
    other.HP -= Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
    intMod += effectIncreaseRate
    alarm[0] += 1
}
else if(caster = obj_player.id && other.id = obj_player.id)
{
    obj_player.HP += HealRate/2
    obj_player.MP += HealRate
}

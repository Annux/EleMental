if(caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id)
{
    other.waterDamage = Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
    intMod += effectIncreaseRate
    if(alarm[0] < Timer0)
        {alarm[0] += 1}
}
else if(caster = obj_player.id && other.id = obj_player.id)
{
    obj_player.HP += HealRate/2
    obj_player.MP += HealRate
}
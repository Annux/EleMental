if(canHit) && ((caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id))
{
    other.HP -= Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
    if(!collision)
        {dmgCompound *= damageMultiplyRate}
    collision = true
}

if(caster = obj_player.id && other.id = obj_player.id) && (canHit)
{
    other.HP -= Damage/4
    if(!collision)
        {dmgCompound *= damageMultiplyRate}
    collision = true
}

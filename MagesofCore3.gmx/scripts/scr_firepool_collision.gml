if(canHit) && ((caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id))
{
    other.HP -= Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
    dmgCompound *= damageMultiplyRate
    collision = true
}
else if(caster = obj_player.id && other.id = obj_player.id) && (canHit)
{
    other.HP -= Damage/4
    dmgCompound *= damageMultiplyRate
    collision = true
}

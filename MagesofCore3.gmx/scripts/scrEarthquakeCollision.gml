if(caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id)
{
    other.earthDamage = Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
}
else if(caster = obj_player.id && other.id = obj_player.id)
{
    obj_player.HP += HealRate/2
    obj_player.MP += HealRate
}

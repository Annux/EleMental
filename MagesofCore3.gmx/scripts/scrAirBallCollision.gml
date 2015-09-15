if(caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id) // if its the player's ball, it has to hit something else. If its an enemy ball, it has to hit the player.
{
    other.airDamage = Damage
    if(random(1) <= intMod)
        {other.Status = effectType}
    instance_destroy()
}

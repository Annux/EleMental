if(shot) && (caster = obj_player.id && other.id != obj_player.id) || (caster != obj_player.id && other.id = obj_player.id) // if its the player's ball, it has to hit something else. If its an enemy ball, it has to hit the player.
{
    other.HP -= Damage
    if(random(1) <= intMod)
        {other.Status = 1}
    if(caster = obj_player.id)
        {
        obj_player.ballCount -= 1
        if(obj_player.ballCount > 5)
            {obj_player.ballCount = 4}
        if(obj_player.ballCount < 0)
            {obj_player.ballCount = 0}}
    instance_destroy()
}

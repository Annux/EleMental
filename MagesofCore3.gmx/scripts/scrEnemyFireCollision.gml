if(shot) && (other.object_index = obj_player)
{
    other.Health -= Damage
    if(random(1) <= effectChance)
        {other.Status = 1}
    instance_destroy()
}
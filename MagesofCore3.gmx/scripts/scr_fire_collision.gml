if(shot) && (other.object_index != caster)
{
    other.HP -= Damage
    if(random(1) <= effectChance)
        {other.Status = 1}
    instance_destroy()
}
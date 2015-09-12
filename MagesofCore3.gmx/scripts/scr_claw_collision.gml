if(attack_Hit)
{
    other.HP -= Damage
    attack_Finish = false
    Attacking = false
    attack_Hit  = false
    attack_Strike = false
    attack_Charge = false
    sprite_index = spr_claw_chick
    image_index = 0
}
else if(Idle)
{
    alarm[1] = attack_Delay/3
    Attacking = true
    Idle = false
    attack_Charge = true
}
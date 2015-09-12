Lclaw_x = x + lengthdir_x(70, image_angle + 70)
Lclaw_y = y + lengthdir_y(70, image_angle + 70)

Rclaw_x = x + lengthdir_x(70, image_angle - 70)
Rclaw_y = y + lengthdir_y(70, image_angle - 70)

if(!Lclaw.Attacking) && (Lclaw.Idle)
{
    Lclaw.x = Lclaw_x
    Lclaw.y = Lclaw_y
    Lclaw.image_angle = image_angle + 90
}
else if(!Lclaw.Attacking) && (!Lclaw.Idle)
    {Rclaw.Attacking = true}

if(!Rclaw.Attacking) && (Rclaw.Idle)
{
    Rclaw.x = Rclaw_x
    Rclaw.y = Rclaw_y
    Rclaw.image_angle = image_angle + 90
}
else if(!Rclaw.Attacking) && (!Rclaw.Idle)
{
    Lclaw.Attacking = true
    Attacking = true
}

if(Facing && !Lclaw.Attacking && !Rclaw.Attacking && Lclaw.Idle && Rclaw.Idle)
{
    Rclaw.Attacking = true
    Attacking = true
}
else if(!Facing && !Lclaw.Attacking && !Rclaw.Attacking && Lclaw.Idle && Rclaw.Idle)
{
    Attacking = false  
}

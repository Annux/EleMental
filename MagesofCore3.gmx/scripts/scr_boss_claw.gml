Lclaw_x = x + lengthdir_x(70, image_angle + 70)
Lclaw_y = y + lengthdir_y(70, image_angle + 70)

Rclaw_x = x + lengthdir_x(70, image_angle - 70)
Rclaw_y = y + lengthdir_y(70, image_angle - 70)


/// Idle position
if(!Lclaw.Attacking) && (Lclaw.Idle)
{
    Lclaw.x = Lclaw_x
    Lclaw.y = Lclaw_y
    Lclaw.image_angle = image_angle + 90
}

if(!Rclaw.Attacking) && (Rclaw.Idle)
{
    Rclaw.x = Rclaw_x
    Rclaw.y = Rclaw_y
    Rclaw.image_angle = image_angle + 90
}


/// Attack positions
if(Facing && !Attacking && Lclaw.Idle && Rclaw.Idle)
{
    Attacking = true
    if(curClaw = Rclaw)
    {
        Rclaw.Attacking = true
        curClaw = Lclaw
    }
    else if(curClaw = Lclaw)
    {
        Lclaw.Attacking = true
        curClaw = Rclaw
    }
}
else
{
    Attacking = false
}
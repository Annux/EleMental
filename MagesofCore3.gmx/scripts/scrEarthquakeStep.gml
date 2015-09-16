if(caster != obj_player.id) && (!Aftershock)
{
    image_speed = .75
    Damage = .5
    enemyStunCD = 1
}

if(caster != obj_player.id) && (image_index > 7)
{
    sprite_index = sprAftershock
    image_xscale = .5
    image_yscale = .5
    Aftershock = true
}
else if(sprite_index = sprAftershock)
{
image_alpha *= .95

    if(image_alpha < .05)
        {instance_destroy()}
}

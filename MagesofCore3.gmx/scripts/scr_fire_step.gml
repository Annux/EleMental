if(x > room_width || x < 0 || y > room_height || y < 0)
    {instance_destroy()}


if(!shot)
{
    if(sprite_index = startAni) && (image_index > 8)
    {
        sprite_index = chargeAni
        image_index = 0
    }
    else if(sprite_index = chargeAni) && (Size < maxSize)
    {
        Size += growRate
        image_xscale = Size
        image_yscale = Size
    }
}
else
{
        if(Size = 1)
        {
            Size = .5
            image_xscale = Size
            image_yscale = Size
        }
        Damage = dmgBase + (dmgMod*(Size-1))
        moveSpeed = moveSpeed
        sprite_index = chargeAni
        speed = moveSpeed
}
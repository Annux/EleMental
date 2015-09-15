if (distance_to_object(parent)<0.5)
{
    parent.x = x;
    parent.y = y;
    instance_destroy();
}

if(!instance_exists(parent))
{
    instance_destroy();   
}

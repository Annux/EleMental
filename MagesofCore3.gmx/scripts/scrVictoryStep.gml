x = view_xview[0] + view_wview[0]/2;
y = view_yview[0] + view_hview[0]/2;
image_angle -= 1;
timer += 1/30;
if (timer = 2)
{
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
}
if (timer = 3)
{
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
}
if (timer = 4)
{
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
    instance_create(x + random_range(-350, 350), y + random_range(-250, 250), objFirework);
}
if (timer >= 5)
{
    instance_create(x + random_range(-350, 250), y + random_range(-250, 250), objFirework);
    instance_create(view_xview[0], view_yview[0], objGOBackground);
}
if (timer = 6)
{
    instance_create(x + random_range(-350, 250), y + random_range(-250, 250), objFirework);
}
if (timer = 7)
{
    instance_create(x + random_range(-350, 250), y + random_range(-250, 250), objFirework);
    instance_create(x + random_range(-350, 250), y + random_range(-250, 250), objFirework);
}
if (timer >= 8)
{
    room_goto(OverworldMap);
}
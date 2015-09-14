if (fadeOut = false)
{
image_alpha += 0.01;
if (image_alpha >= 1)
{
    timer += 1/30;
    if (timer >= 2)
    {
        instance_create(view_xview[0], view_yview[0], objGOBackground);
        fadeOut = true;
    }
}
}
if (fadeOut = true)
{
    image_alpha -= 0.01;
    if (image_alpha <= 0)
    {
        instance_deactivate_all(true);
        room_goto(MainMenu);
    }
}
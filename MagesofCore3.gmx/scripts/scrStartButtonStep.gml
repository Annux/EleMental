if (objMainMenuBkg.image_alpha >= 1) && (image_alpha < 1)
{
    image_alpha += 0.1;
}
if (image_alpha >= 1)
{
    buttonActive = true;
}
if (buttonActive = true)
{
    if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprStartHilite;
        if (mouse_check_button_pressed(mb_left))
        {
            room_goto(OverworldMap);
        }
    }
    else
    {
        sprite_index = sprStartButton;
    }
}
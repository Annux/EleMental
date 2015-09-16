if (objStartButton.image_alpha >= 0.5) && (image_alpha < 1)
{
    image_alpha += 0.1;
}
if (image_alpha >= 1)
{
    buttonActive = true;
}
if (buttonActive = true)
{
    if (position_meeting(mouse_x, mouse_y, objQuitButton))
    {
        sprite_index = sprQuitHilite;
        if (mouse_check_button_pressed(mb_left))
        {
            game_end()
        }
    }
    else
    {
        sprite_index = sprQuitButton;
    }
}

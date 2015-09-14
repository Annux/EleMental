if (position_meeting(mouse_x, mouse_y, self))
{
    image_blend = c_purple;
    if (mouse_check_button(mb_left))
    {
        objOverworldController.playerActive = true;
        worldGoTo = true;
    }
}
else
{
    image_blend = -1;
}

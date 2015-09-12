if (position_meeting(mouse_x, mouse_y, objSelBackButton))
    {
        sprite_index = sprSelBackHilite;
        if (mouse_check_button_pressed(mb_left))
        {
            roomMove = true;
        }
    }
    else if (roomMove = true)
    {
        sprite_index = sprSelBackHilite;
        if (objFadeMask.image_alpha >= 1)
        {
            room_goto(MainMenu);
        }
    }
    else
    {
        sprite_index = sprSelBackButton;
    }
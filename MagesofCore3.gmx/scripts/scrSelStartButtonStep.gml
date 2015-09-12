if (position_meeting(mouse_x, mouse_y, objSelStartButton))
    {
        sprite_index = sprSelStartHilite;
        if (mouse_check_button_pressed(mb_left)) && (objButtonsPressed.buttonOnePressed = true) && (objButtonsPressed.buttonTwoPressed = true)
        {
            roomMove = true;
        }
    }
    else if (roomMove = true)
    {
        sprite_index = sprSelStartHilite;
        if (objFadeMask.image_alpha >= 1)
        {
            room_goto(OverworldMap);
        }
    }
    else
    {
        sprite_index = sprSelStartButton;
    }
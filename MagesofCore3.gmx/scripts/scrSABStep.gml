if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprSABSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.secElem = 4;
        }
    }
    else
    {
        sprite_index = sprSecAirButton;
    }

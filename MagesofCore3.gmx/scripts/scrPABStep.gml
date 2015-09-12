if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprPABSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.priElem = 4;
        }
    }
    else
    {
        sprite_index = sprPriAirButton;
    }

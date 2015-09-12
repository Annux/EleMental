if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprPEBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.priElem = 3;
        }
    }
    else
    {
        sprite_index = sprPriEarthButton;
    }

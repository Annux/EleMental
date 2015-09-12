if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprPWBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.priElem = 2;
        }
    }
    else
    {
        sprite_index = sprPriWaterButton;
    }

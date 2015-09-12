if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprPFBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.priElem = 1;
        }
    }
    else
    {
        sprite_index = sprPriFireButton;
    }

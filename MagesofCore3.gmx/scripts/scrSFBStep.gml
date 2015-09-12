if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprSFBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.secElem = 1;
        }
    }
    else
    {
        sprite_index = sprSecFireButton;
    }

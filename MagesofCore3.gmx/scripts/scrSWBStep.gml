if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprSWBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.secElem = 2;
        }
    }
    else
    {
        sprite_index = sprSecWaterButton;
    }

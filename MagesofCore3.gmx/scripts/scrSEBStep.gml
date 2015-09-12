if (position_meeting(mouse_x, mouse_y, objStartButton))
    {
        sprite_index = sprSEBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            global.secElem = 3;
        }
    }
    else
    {
        sprite_index = sprSecEarthButton;
    }

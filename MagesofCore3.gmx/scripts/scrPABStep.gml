if (position_meeting(mouse_x, mouse_y, objPriAirButton))
    {
        timer += 1/5;
        sprite_index = sprPABSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objPriFireButton.buttonActive = false;
            objPriWaterButton.buttonActive = false;
            objPriEarthButton.buttonActive = false;
            global.priElem = 4;
            objButtonsPressed.buttonOnePressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprPABSelected;
        timer = 0;
    }
    else
    {
        sprite_index = sprPriAirButton;
        timer = 0;
    }

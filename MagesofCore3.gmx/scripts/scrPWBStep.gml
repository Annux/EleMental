if (position_meeting(mouse_x, mouse_y, objPriWaterButton))
    {
        timer += 1/5;
        sprite_index = sprPWBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objPriFireButton.buttonActive = false;
            objPriEarthButton.buttonActive = false;
            objPriAirButton.buttonActive = false;
            global.priElem = 2;
            objButtonsPressed.buttonOnePressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprPWBSelected;
        timer = 0;
    }
    else
    {
        sprite_index = sprPriWaterButton;
        timer = 0;
    }
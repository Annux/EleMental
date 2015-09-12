if (position_meeting(mouse_x, mouse_y, objPriWaterButton))
    {
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
    }
    else
    {
        sprite_index = sprPriWaterButton;
    }
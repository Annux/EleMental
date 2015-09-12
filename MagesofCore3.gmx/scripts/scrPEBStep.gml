if (position_meeting(mouse_x, mouse_y, objPriEarthButton))
    {
        sprite_index = sprPEBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objPriFireButton.buttonActive = false;
            objPriWaterButton.buttonActive = false;
            objPriAirButton.buttonActive = false;
            global.priElem = 3;
            objButtonsPressed.buttonOnePressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprPEBSelected;
    }
    else
    {
        sprite_index = sprPriEarthButton;
    }
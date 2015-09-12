if (position_meeting(mouse_x, mouse_y, objPriFireButton))
    {
        sprite_index = sprPFBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objPriWaterButton.buttonActive = false;
            objPriEarthButton.buttonActive = false;
            objPriAirButton.buttonActive = false;
            global.priElem = 1;
            objButtonsPressed.buttonOnePressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprPFBSelected;
    }
    else
    {
        sprite_index = sprPriFireButton;
    }

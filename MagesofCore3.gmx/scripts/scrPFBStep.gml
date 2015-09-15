if (position_meeting(mouse_x, mouse_y, objPriFireButton))
    {
        timer += 1/5;
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
        timer = 0;
    }
    else
    {
        sprite_index = sprPriFireButton;
        timer = 0;
    }

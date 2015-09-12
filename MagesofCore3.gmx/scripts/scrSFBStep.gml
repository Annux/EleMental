if (position_meeting(mouse_x, mouse_y, objSecFireButton))
    {
        sprite_index = sprSFBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objSecEarthButton.buttonActive = false;
            objSecWaterButton.buttonActive = false;
            objSecAirButton.buttonActive = false;
            global.secElem = 1;
            objButtonsPressed.buttonTwoPressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprSFBSelected;
    }
    else
    {
        sprite_index = sprSecFireButton;
    }
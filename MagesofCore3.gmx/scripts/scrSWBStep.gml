if (position_meeting(mouse_x, mouse_y, objSecWaterButton))
    {
        timer += 1/5;
        sprite_index = sprSWBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objSecFireButton.buttonActive = false;
            objSecEarthButton.buttonActive = false;
            objSecAirButton.buttonActive = false;
            global.secElem = 2;
            objButtonsPressed.buttonTwoPressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprSWBSelected;
    }
    else
    {
        sprite_index = sprSecWaterButton;
    }
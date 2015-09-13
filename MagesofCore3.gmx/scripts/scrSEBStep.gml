if (position_meeting(mouse_x, mouse_y, objSecEarthButton))
    {
        timer += 1/5;
        sprite_index = sprSEBSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objSecFireButton.buttonActive = false;
            objSecWaterButton.buttonActive = false;
            objSecAirButton.buttonActive = false;
            global.secElem = 3;
            objButtonsPressed.buttonTwoPressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprSEBSelected;
        timer = 0;
    }
    else
    {
        sprite_index = sprSecEarthButton;
        timer = 0;
    }
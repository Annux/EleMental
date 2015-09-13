if (position_meeting(mouse_x, mouse_y, objSecAirButton))
    {
        timer += 1/5;
        sprite_index = sprSABSelected;
        if (mouse_check_button_pressed(mb_left))
        {
            buttonActive = true;
            objSecFireButton.buttonActive = false;
            objSecWaterButton.buttonActive = false;
            objSecEarthButton.buttonActive = false;
            global.secElem = 4;
            objButtonsPressed.buttonTwoPressed = true;
        }
    }
    else if (buttonActive = true)
    {
        sprite_index = sprSABSelected;
        timer = 0;
    }
    else
    {
        sprite_index = sprSecAirButton;
        timer = 0;
    }

draw_set_font(mainFont)
draw_set_color(c_black)

nearestFireBall = instance_nearest(obj_player.x,obj_player.y, obj_fire)
nearestWaterBall = instance_nearest(obj_player.x,obj_player.y, objWaterBall)
nearestRockBall = instance_nearest(obj_player.x,obj_player.y, objRockBall)
nearestAirBall = instance_nearest(obj_player.x,obj_player.y, objAirBall)
nearestWaterPool = instance_nearest(obj_player.x,obj_player.y, objWaterpool)
nearestFirePool = instance_nearest(obj_player.x,obj_player.y, objFirepool)
nearestAftershock = instance_nearest(obj_player.x,obj_player.y, objAftershock)
nearestForcePush = instance_nearest(obj_player.x,obj_player.y, objForcePush)
nearestBubbleMine = instance_nearest(obj_player.x,obj_player.y, objBubbleMine)
nearestAirCutter = instance_nearest(obj_player.x,obj_player.y, objAirCutter)

draw_healthbar  (view_xview[0]+10, view_yview[0]+10, view_xview[0]+3.5*obj_player.MaxHP, view_yview[0]+y+40, obj_player.HP/obj_player.MaxHP*100, c_white, c_red, c_green, 0, true, true);
//draw_healthbar  (view_xview[0]+10, view_yview[0]+50, view_xview[0]+3.5*obj_player.MaxMP, view_yview[0]+y+80, obj_player.MP/obj_player.MaxMP*100, c_white, c_red, c_blue, 0, true, true);
draw_healthbar  (view_xview[0]+10, view_yview[0]+50, view_xview[0]+350, view_yview[0] + 60, (objOverwatch.currentExp/objOverwatch.i)* 100, c_dkgray, c_yellow, c_yellow, 0, true, true);

if (global.priElem = 1)
{
    draw_sprite(sprFireHUD, 0, view_xview[0]+120, view_yview[0]+90);
}
else if (global.priElem = 2)
{
    draw_sprite(sprWaterHUD, 0, view_xview[0]+120, view_yview[0]+90);
}
else if (global.priElem = 3)
{
    draw_sprite(sprEarthHUD, 0, view_xview[0]+120, view_yview[0]+90);
}
else if (global.priElem = 4)
{
    draw_sprite(sprAirHUD, 0, view_xview[0]+120, view_yview[0]+90);
}

if (global.secElem = 1)
{
    draw_sprite(sprFireHUD, 0, view_xview[0]+160, view_yview[0]+90);
}
else if (global.secElem = 2)
{
    draw_sprite(sprWaterHUD, 0, view_xview[0]+160, view_yview[0]+90);
}
else if (global.secElem = 3)
{
    draw_sprite(sprEarthHUD, 0, view_xview[0]+160, view_yview[0]+90);
}
else if (global.secElem = 4)
{
    draw_sprite(sprAirHUD, 0, view_xview[0]+160, view_yview[0]+90);
}

draw_circle_colour(view_xview[0] + 970, view_yview[0] + 45, 26, c_lime, c_orange, false);
if (obj_player.curElem = 1)
{
    draw_sprite(sprFireHUD, 0, view_xview[0]+970, view_yview[0]+45);
}
else if (obj_player.curElem = 2)
{
    draw_sprite(sprWaterHUD, 0, view_xview[0]+970, view_yview[0]+45);
}
else if (obj_player.curElem = 3)
{
    draw_sprite(sprEarthHUD, 0, view_xview[0]+970, view_yview[0]+45);
}
else if (obj_player.curElem = 4)
{
    draw_sprite(sprAirHUD, 0, view_xview[0]+970, view_yview[0]+45);
}

draw_healthbar  (view_xview[0]+1000, view_yview[0]+10, view_xview[0] + 1010, view_yview[0] + 100, (obj_player.bossSpawnReady/objOverworldController.levelReq) * 100, c_dkgray, c_yellow, c_red, 3, true, true);


if(global.priElem = 1)
{
    draw_set_font(ammoFont)
    if(obj_player.curElem = 1)
    {
         draw_text(view_xview[0]+370, view_yview[0] + 30, string(obj_player.maxballCount - obj_player.ballCount));
    }
    else if(obj_player.curElem = 4)
    {
         draw_text(view_xview[0]+370, view_yview[0] + 30, string(obj_player.maxaBallCount - obj_player.aBallCount));
    }
    draw_set_font(mainFont)
}

///DEBUG DISPLAY///
if (global.DebugMode)
{
    draw_set_font(DebugFont)
    draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]-50, "DEBUG MODE")
    draw_set_font(mainFont)
    draw_text(obj_player.x, obj_player.y + 10, "POW: " + string(obj_player.POW));
    draw_text(obj_player.x, obj_player.y + 22, "END: " + string(obj_player.END));
    draw_text(obj_player.x, obj_player.y + 34, "DEF: " + string(obj_player.DEF));
    draw_text(obj_player.x, obj_player.y + 46, "SPD: " + string(obj_player.SPD));
    draw_text(obj_player.x, obj_player.y + 58, "INT: " + string(obj_player.INT));
    draw_text(obj_player.x, obj_player.y + 70, "RES: " + string(obj_player.RES));

    if(instance_exists(obj_fire))
    {
        draw_text(nearestFireBall.x,nearestFireBall.y, string(nearestFireBall.Damage))
    }
    else if(instance_exists(objWaterBall))
    {
        draw_text(nearestWaterBall.x,nearestWaterBall.y, string(nearestWaterBall.Damage))
    }
    else if(instance_exists(objAirBall))
    {
        draw_text(nearestAirBall.x,nearestAirBall.y, string(nearestAirBall.Damage))
    }
    else if(instance_exists(objAirCutter))
    {
        draw_text(nearestAirCutter.x,nearestAirCutter.y, string(nearestAirCutter.Damage))
    }
    else if(instance_exists(objForcePush))
    {
        draw_text(nearestForcePush.x,nearestForcePush.y, string(nearestForcePush.Damage))
    }
    else if(instance_exists(objFirepool))
    {
        draw_set_color(c_white)
        draw_text(nearestFirePool.x,nearestFirePool.y, string(nearestFirePool.Damage))
        draw_set_color(c_black)
    }
    else if(instance_exists(objWaterpool))
    {
        draw_set_color(c_white)
        draw_text(nearestWaterPool.x,nearestWaterPool.y, string(nearestWaterPool.Damage))
        draw_set_color(c_black)
    }
    else if(instance_exists(objRockBall))
    {
        draw_text(nearestRockBall.x,nearestRockBall.y, string(nearestRockBall.Damage))
    }
}

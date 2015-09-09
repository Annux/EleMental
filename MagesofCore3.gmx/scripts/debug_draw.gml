draw_set_font(mainFont)
draw_set_color(c_black)

nearestFireBall = instance_nearest(obj_player.x,obj_player.y, obj_fire)
nearestWaterBall = instance_nearest(obj_player.x,obj_player.y, objWaterBall)
nearestRockBall = instance_nearest(obj_player.x,obj_player.y, objRockBall)
nearestAirBall = instance_nearest(obj_player.x,obj_player.y, objAirBall)
nearestWaterPool = instance_nearest(obj_player.x,obj_player.y, objWaterpool)
nearestFirePool = instance_nearest(obj_player.x,obj_player.y, objFirepool)

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

draw_healthbar  (view_xview[0]+10, view_yview[0]+10, view_xview[0]+3.5*obj_player.MaxHP, view_yview[0]+y+40, obj_player.HP/obj_player.MaxHP*100, c_white, c_red, c_green, 0, true, true)
draw_healthbar  (view_xview[0]+10, view_yview[0]+50, view_xview[0]+3.5*obj_player.MaxMP, view_yview[0]+y+80, obj_player.MP/obj_player.MaxMP*100, c_white, c_red, c_blue, 0, true, true)
draw_healthbar (view_xview[0] + 10, view_yview[0] + 90, view_xview[0]+ 350, view_yview[0] + 100, (objOverwatch.currentExp/objOverwatch.i)* 100, c_dkgray, c_green, c_green, 0, true, true);

if (keyboard_check(vk_numpad0))
{
    draw_text(obj_player.x, obj_player.y + 10, "POW: " + string(obj_player.POW));
    draw_text(obj_player.x, obj_player.y + 20, "END: " + string(obj_player.END));
    draw_text(obj_player.x, obj_player.y + 30, "DEF: " + string(obj_player.DEF));
    draw_text(obj_player.x, obj_player.y + 40, "SPD: " + string(obj_player.SPD));
    draw_text(obj_player.x, obj_player.y + 50, "INT: " + string(obj_player.INT));
    draw_text(obj_player.x, obj_player.y + 60, "RES: " + string(obj_player.RES));
}

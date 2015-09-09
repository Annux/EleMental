draw_set_font(mainFont)
draw_set_color(c_black)

nearestFireBall = instance_nearest(obj_player.x,obj_player.y, obj_fire)
nearestWaterBall = instance_nearest(obj_player.x,obj_player.y, objWaterBall)
nearestRockBall = instance_nearest(obj_player.x,obj_player.y, objRockBall)
nearestAirBall = instance_nearest(obj_player.x,obj_player.y, objAirBall)

if(instance_exists(obj_fire))
{
    draw_text(nearestFireBall.x,nearestFireBall.y, "Fire Damage: " + string(nearestFireBall.Damage))
}
else if(instance_exists(objWaterBall))
{
    draw_text(nearestWaterBall.x,nearestWaterBall.y, "Water Damage: " + string(nearestWaterBall.Damage))
}
else if(instance_exists(objRockBall))
{
    draw_text(nearestRockBall.x,nearestRockBall.y, "Rock Damage: " + string(nearestRockBall.Damage))
}
else if(instance_exists(objAirBall))
{
    draw_text(nearestAirBall.x,nearestAirBall.y, "Air Damage: " + string(nearestAirBall.Damage))
}

draw_healthbar  (view_xview[0]+10, view_yview[0]+10, view_xview[0]+3.5*obj_player.MaxHP, view_yview[0]+y+40, obj_player.HP/obj_player.HP*100, c_white, c_red, c_green, 0, true, true)
draw_healthbar  (view_xview[0]+10, view_yview[0]+50, view_xview[0]+3.5*obj_player.MaxMP, view_yview[0]+y+80, obj_player.MP/obj_player.MP*100, c_white, c_red, c_blue, 0, true, true)
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
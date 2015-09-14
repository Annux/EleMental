if(instance_exists(obj_player))
{
    POW = obj_player.POW
    END = obj_player.END
    DEF = obj_player.DEF
    SPD = obj_player.SPD
    INT = obj_player.INT
    RES = obj_player.RES
    Level = objOverwatch.playerLevel
}
else if (playerActive = false)
{
    POW = 10
    END = 10
    DEF = 10
    SPD = 10
    INT = 10
    RES = 10
    Level = 1
}
else
{
    POW = POW
    END = END
    DEF = DEF
    SPD = SPD
    INT = INT
    RES = RES
    Level = Level
}

if(room = OverworldMap) && (statsActive = 1)
{
    draw_set_color(c_white)
    draw_rectangle(room_width*7/10, room_height*7/10, room_width-5, room_height-5, false);
    draw_set_color(c_black)
    draw_set_font(ammoFont)
    draw_text(room_width*7/10+30, room_height*7/10 + 10, "Level " + string(Level))
    draw_set_font(mainFont)
    draw_set_halign(fa_right)
    draw_text(room_width*9/10+10, room_height*7/10 + 70,  "POWER " + string(POW))
    draw_text(room_width*9/10+10, room_height*7/10 + 90,  "ENDURANCE " + string(END))
    draw_text(room_width*9/10+10, room_height*7/10 + 110, "DEFENSE " + string(DEF))
    draw_text(room_width*9/10+10, room_height*7/10 + 130, "SPEED " + string(SPD))
    draw_text(room_width*9/10+10, room_height*7/10 + 150, "INTELLIGENCE " + string(INT))
    draw_text(room_width*9/10+10, room_height*7/10 + 170, "RESISTANCE " + string(RES))
    draw_set_halign(fa_left)
}

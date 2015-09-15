draw_self();
c_brown = make_colour_rgb(102, 51, 0);

draw_healthbar(x - 50, y - 65, x + 50, y - 50, (HP/MaxHP) * 100, c_dkgray, c_red, c_black, 0, true, true);

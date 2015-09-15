draw_self();
c_brown = make_colour_rgb(102, 51, 0);

draw_healthbar(x - 32, y - 40, x + 32, y - 30, (HP/MaxHP) * 100, c_dkgray, c_black, c_brown, 0, true, true);

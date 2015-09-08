draw_self();
c_sky = make_colour_rgb(102, 178, 255);

draw_healthbar(x - 32, y - 40, x + 32, y - 30, (HP/MaxHP) * 100, c_dkgray, c_black, c_sky, 0, true, true);

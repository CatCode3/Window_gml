draw_self();

if (window == true) {
	draw_set_alpha(alpha);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	
	draw_set_alpha(alpha * 2);
	draw_sprite(s_table, 0, room_width / 2, room_height / 2 + position);
	draw_set_color(make_color_rgb(133, 148, 199));
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2 - 92 + position, "Menu");
	
	draw_set_valign(fa_center);
	var yy = room_height / 2 - 20;
	for (i = 0; i < array_length_1d(menu_window); i++) {
		draw_sprite(s_buttons_menu, btn_num[i], room_width / 2, yy + position);
		draw_text(room_width / 2, yy + position, string(menu_window[i]));
		yy += 42;
	}
}
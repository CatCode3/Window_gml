image_speed = 0;

if (window == true) {
	
	#region Virtual Buttons
	
	var xx = room_width / 2;
	var yy = room_height / 2;
	var contin = virtual_key_add(xx - 60, yy - 36, 120, 32, ord("W"));
	
	if (keyboard_check_pressed(ord("W"))) {
		close = true;
	}
	
	//Hover Effects
	var y1 = 0;
	var y2 = 0;
	
	for (i = 0; i < array_length_1d(menu_window); i++) {
		if (point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 60, room_height / 2 - 40 + y1, room_width / 2 + 60, room_height / 2 - 8 + y2)) {
			btn_num[i] = 1;
		} else {
			btn_num[i] = 0;	
		}
		
		y1 += 38;
		y2 += 42;
	}
	
	#endregion
	
	#region Animation Engine
	
	//Open
	if (alpha <= 0.5 && close == false) {
		alpha += 2 / room_speed;
		position++;
	} else if (alpha == 0.5 && close == false) {
		alpha = 0.5;
	}
	
	//Close
	if (close == true) {
		alpha -= 2 / room_speed;
		position--;
		
		if (alpha <= 0) {
			window = false;
			close = false;
			alpha = 0;
			position = -20;	
		}
		
	}
	
	#endregion
	
}


live_auto_call;



if (objDooter.isPlaying) {
	var dirToMouse = point_direction(mouse_x, mouse_y, x, y);
	show_debug_message("Dir to mouse: " + string(dirToMouse));
	direction = dirToMouse;
	speed = maxSpeed;
} else {
	speed = 0;	
}




if (keyboard_check_pressed(vk_up)) {
	maxSpeed += 1;
} else if (keyboard_check_pressed(vk_down)) {
	if (maxSpeed > 1) {
		maxSpeed -= 1;
	}
}
live_auto_call;

//draw_self();


var dirToMouse = point_direction(room_width/2, room_height/2, mouse_x, mouse_y);
direction = dirToMouse;

var mouseDirX = lengthdir_x(1.0, dirToMouse);
var mouseDirY = lengthdir_y(1.0, dirToMouse);


var angelMargin = 50;
var rectWidth = room_width - angelMargin*2;
var rectHeight = room_height - angelMargin*2;


// Map vector to rectangle V1
if (rectWidth * abs(mouseDirY) < rectHeight * abs(mouseDirX)) {
   xx = sign(mouseDirY) * rectWidth / 2
   yy = mouseDirY * xx / mouseDirX
   x = room_width/2 + xx;
   y = room_height/2 + yy;
} else {
   yy = sign(mouseDirY) * rectHeight / 2
   xx = mouseDirX * yy / mouseDirY
   x = room_width/2 + xx;
   y = room_height/2 + yy;
}


//var xx = a/max(abs(a.x)/rectWidth;
//var yy = abs(b.y)/rectHeight)/2;


if (true) {
	draw_text(100, 100, "mouseDir: " + string(mouseDirX) + ", " + string(mouseDirY));
	draw_set_color(c_green);
	draw_line(room_width/2, room_height/2, mouse_x, mouse_y);
	draw_set_color(c_red);
	//draw_line(room_width/2, room_height/2, x, y);

	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_text(100, 100, "step: " + string(metronomeSteps));
}

if (isPlaying) {
	draw_set_colour(c_yellow);
	draw_rectangle(x - 5, y - 5, x + 5, y + 5, false);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_text(100, 100, "doot");
}


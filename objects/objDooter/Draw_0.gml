live_auto_call;

//draw_self();

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(100, 100, "step: " + string(metronomeSteps));

if (isPlaying) {
	draw_set_colour(c_yellow);
	draw_rectangle(5, 5, 55, 55, false);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(100, 100, "doot");
}


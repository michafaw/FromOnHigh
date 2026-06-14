live_auto_call;

metronomeSteps++;
if (metronomeSteps > measureLength) {
	metronomeSteps = metronomeSteps % measureLength;	
}

metronomePercent = metronomeSteps / measureLength;




var shouldPlay = shouldPlayDoot(metronomePercent, dootTiming);

// Determine if it is a new note playing (off -> on)
// Micha TODO
var newNote = shouldPlay && !isPlaying;
var stopPlaying = !shouldPlay && isPlaying;

if (newNote) {
	//audio_play_sound(trumpet_c5, 0, false);
	//audio_play_sound(trumpet_e5, 0, false);
	//audio_play_sound(trumpet_g5, 0, false);
	//audio_play_sound(trumpet_c6, 0, false);
	
	switch (chordCount) {
		case 4:
			audio_play_sound(trumpet_c6, 0, false);
		case 3:
			audio_play_sound(trumpet_g5, 0, false);
		case 2:
			audio_play_sound(trumpet_e5, 0, false);
		case 1:
		default:
			audio_play_sound(trumpet_c5, 0, false);
	}
	
} else if (stopPlaying) {
	audio_stop_sound(trumpet_c5);
	audio_stop_sound(trumpet_e5);
	audio_stop_sound(trumpet_g5);
	audio_stop_sound(trumpet_c6);
}


isPlaying = shouldPlay;

if (newNote) {
	chordCount++;
	if (chordCount > maxChordCount) {
		chordCount = 1;	
	}
}




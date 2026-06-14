live_auto_call;

metronomeSteps++;
if (metronomeSteps > measureLength) {
	metronomeSteps = metronomeSteps % measureLength;	
}

metronomePercent = metronomeSteps / measureLength;




var shouldPlay = shouldPlayDoot(metronomePercent, dootTiming);

// Determine if it is a new note playing (off -> on)
// Micha TODO

isPlaying = shouldPlay;

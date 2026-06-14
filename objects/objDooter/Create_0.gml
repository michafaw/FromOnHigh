live_auto_call;


measureLength = 2.0 * game_get_speed(gamespeed_fps);

// 1 2+3 rest
// Pairs of start/stop times represented as portion of a measure (1.0 = a full measure)
dootTiming = [[0.0, 0.0 + 0.20] ,
			  [0.25, 0.25 + 0.10],
			  [0.375, 0.375 + 0.10],
			  [0.50, 0.50 + 0.22]];




// Internal variables
metronomeSteps = 0;
metronomePercent = metronomeSteps / measureLength;
isPlaying = false;
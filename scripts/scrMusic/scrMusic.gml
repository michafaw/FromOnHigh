function shouldPlayDoot(measurePercentage, dootTiming2DArray){
	live_auto_call;
	
	for (var i = 0; i < array_length(dootTiming2DArray); i++) {
		var note = dootTiming2DArray[i];
		if (measurePercentage >= note[0] && measurePercentage < note[1]) {
			return true;	
		}
	}
	return false;
}
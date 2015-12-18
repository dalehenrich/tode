public
toExtent: toExtent during: numberOfSeconds on: anElement
	element := anElement.
	originalExtent := anElement extent.
	
	animatedValue := VIAnimatedValue new
									evaluator: [ :t | originalExtent interpolateTo: toExtent at: t ];
									timer: (VITimer new cycleLength: numberOfSeconds);
									yourself.
	
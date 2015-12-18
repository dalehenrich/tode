public
toColor: finalColor during: numberOfSeconds on: anElement
	
	element := anElement.
	colorNormalizer := RTNColorLinearNormalizer
		inContext: ((0 to: 1 by: 1/(30 * numberOfSeconds)) collect: #yourself)
		lowColor: anElement trachelShape color
		highColor: finalColor.
		
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | colorNormalizer rtValue: t ];
							timer: (VITimer new cycleLength: numberOfSeconds);
							yourself.
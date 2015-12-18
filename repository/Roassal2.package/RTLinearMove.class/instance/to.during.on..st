public
to: anEndPoint during: seconds on: anElement
	| position |
	element := anElement.
	
	position := anElement position.
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | position interpolateTo: anEndPoint at: t ];
							timer: (VITimer new cycleLength: seconds);
							yourself.
	
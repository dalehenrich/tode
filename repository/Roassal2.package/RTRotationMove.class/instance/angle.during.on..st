public
angle: anAngle during: seconds on: anElement
	|currentAngle|
	element := anElement.
	currentAngle := element trachelShape angleInDegrees.
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | currentAngle interpolateTo: anAngle at: t ];
							timer: (VITimer new cycleLength: seconds);
							yourself.
public
on: view during: seconds
	| initialScale |
	initialScale := view canvas camera scale.
	trachelCanvas := view canvas.
	animatedValue := VIAnimatedValue new
							evaluator: [ :t | initialScale interpolateTo: (initialScale * self step ) at: t ];
							timer: (VITimer new cycleLength: seconds);
							yourself.
	


public
on: el during: seconds
	| initialScale initialPosition finalScale finalPosition rec sc |
	canvas := el view canvas.
	initialScale := canvas camera scale.
	initialPosition := canvas camera position.
	
	rec := el encompassingRectangle.
	finalPosition := rec center.
	sc :=canvas extent / (rec extent * 1.1).
	finalScale := (sc x < sc y ) ifTrue: [sc x] ifFalse: [sc y].
	
	anime1 := VIAnimatedValue new 
		evaluator: [ :t | initialScale interpolateTo: finalScale at: t ];
		timer: (VITimer new cycleLength: seconds);
		yourself.
	anime2 := VIAnimatedValue new
		evaluator: [ :t | initialPosition interpolateTo: finalPosition at: t ];
		timer: (VITimer new cycleLength: seconds);
		yourself.
	
animation
animatedArc
	"
	self new animatedArc
	"

	| v e angle timer |
	v := TRCanvas new.
	timer := VITimer new cycleLength: 2.
	timer repeat.
	angle := VIAnimatedValue new
					evaluator: [ :t | 0 interpolateTo: 360 at: t ];
					timer: timer;
					yourself.
					
	e := (TRArcShape new 
			alphaAngle: angle betaAngle: (angle + 30) innerRadius: 50 externalRadius: 80).
	v addShape: e.
	angle start.

	v addAnimation: (TRResetAllShapes new).
	v open
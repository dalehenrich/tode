labels
rotatingLabelsAnimated
	"
	self new rotatingLabelsAnimated
	"

	| v shape timer rotationRatio seconds |
	v := RTView new.
	seconds := 7.
	timer := VITimer new cycleLength: seconds.
	rotationRatio := 0.2.

	shape := RTRotatedLabel new.
	shape angleInDegree: [ :cls | 
		| valueEnd |
		valueEnd := cls numberOfMethods negated / rotationRatio.
		VIAnimatedValue new
					evaluator: [ :t | 0 interpolateTo: valueEnd at: t ];
					timer: timer;
					yourself. ].

	shape text: [ :cls | '                                                                                ', cls name ].
	shape color: (Color black alpha: 0.2).
	v addAll: (shape elementsOn: Collection withAllSubclasses).

	v canvas color: Color white.
	v addAnimation: TRResetAllShapes new.
	timer start.
	v open
sources
exampleRotatingAnimatedLabels


	| v shape timer |
	v := RTView new.
	timer := VITimer new cycleLength: 2.
	
	
	shape := RTRotatedLabel new.
	"shape angleInDegree: [ :cls | cls numberOfMethods negated / 1.5 ]."
	shape angleInDegree: [ :cls | 
		| valueEnd |
		valueEnd := cls numberOfMethods negated / 1.5.
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

	^ v
animations
escapingCircle

	| v e |
	v := RTView new.
	e := (RTEllipse new size: 50; color: (Color blue alpha: 0.4)) element.
	v add: e.

	e when: TRMouseEnter do: [ :evt | 
		| newPos |
		newPos := ((300 atRandom - 150) @ (300 atRandom - 150)) + evt element position. 
		v addAnimation: (RTAccelerationMove to: newPos  during: 2 on: evt element) ].
	v open.


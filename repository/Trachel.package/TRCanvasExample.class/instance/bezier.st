examples
bezier
	"
	self new bezier.
	"

	| t points |
	points := OrderedCollection new.
	points add: 50 @ 50.
	points add: 150 @ 20.
	points add: 120 @ 130.
	points add: 50 @ 150.
	points add: 80 @ 80.
	t := TRCanvas new.
	t addShape: (TRLineShape  new from: 50 @ 50 to: 130 @ 20).
	t addShape: 
		(TRBezierShape new 
			points: points; 
			width: 2.5;
			strokePaint: Color purple;
			yourself).
	t open
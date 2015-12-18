examples
circle2
	"
	self new circle2
	"

	| c circle line1 line2 |
	c := TRCanvas new.
	circle := TREllipseShape new from: -50 @ -50 to: 50 @ 50.
	circle color: (Color purple alpha: 0.3).
	line1 := TRLineShape new from: -50 @ 0 to: 50 @ 0.
	line2 := TRLineShape new from: 0 @ -50 to: 0 @ 50.
	line1 color: (Color blue alpha: 0.5).
	line2 color: (Color blue alpha: 0.5).
	
	c addShape: circle.
	c addShape: line1.
	c addShape: line2.
	c open
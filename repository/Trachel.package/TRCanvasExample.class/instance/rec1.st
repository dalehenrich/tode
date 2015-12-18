examples
rec1
	"
	self new rec1
	"

	| c |
	c := TRCanvas new.
	c buildRectangle: ((50 @ 50) extent: (150 @ 75)) color: Color red.
	c buildRectangle: ((80 @ 80) extent: (150 @ 75)) color: Color lightGreen.
	c buildLineFrom: 50 @ 50 to: 80 @ 80 color: Color lightGreen.
	c open
examples
recSimple
	"
	self new recSimple
	"

	| c |
	c := TRCanvas new.
	c buildRectangle: ((50 @ 50) extent: (150 @ 75)) color: Color red.
	c open
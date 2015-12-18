examples
circle
	"
	self new circle
	"
	| c  |
	c := TRCanvas new.
	c buildRectangle: (50 @ 50 corner: 80 @ 80) color: (Color blue alpha: 0.2).

	100 to: 200 by: 20 do: [ :i |
		 c buildCircleFrom: 50 @ 50 to: i @ 100 color: (Color red alpha: 0.1).
	].
	c openTitled: 'Example with transparent circles'.
	

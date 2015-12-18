fixed shape
testAccessing
	| c r1 r2 |
	c := TRCanvas new.
	r1 := c buildRectangle: ((0 @ 0) extent: (150 @ 75)) color: Color red.
	r1 setAsFixed.
	
	r2 := c buildRectangle: ((0 @ 0) extent: (130 @ 50)) color: Color lightGreen.

	self assert: (c shapeForPositionInPixels: (0 @ 0)) = r1.
	self assert: (c shapeForPositionInPixels: (250 @ 250)) = r2.
fixed shape
testRemovingFixedElement
	| c r |
	c := TRCanvas new.
	r := c buildRectangle: ((0 @ 0) extent: (150 @ 75)) color: Color red.
	r setAsFixed.

	self assert: c numberOfFixedShapes = 1.
	self assert: c numberOfShapes = 0.
	r remove.
	self assert: c numberOfShapes = 0.
	self assert: c numberOfFixedShapes = 0.
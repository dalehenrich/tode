events
testShapeWithActionForPositionInPixels2

	| c s1 s2 |
	c := TRCanvas new.
	s1 := TRBoxShape new size: 20.
	s1 when: TRMouseClick do: [  ].

	s2 := TRBoxShape new size: 20.
	
	c addShape: s1.
	c addShape: s2.

	s2 translateTo: 30 @ 0.
	
	self assert: (c shapeWithAction: TRMouseClick forPositionInPixels: 250 @ 250) == s1.
	self assert: (c shapeWithAction: TRMouseMove forPositionInPixels: 250 @ 250) == c.
	self assert: (c shapeWithAction: TRMouseClick forPositionInPixels: 280 @ 250) == c.
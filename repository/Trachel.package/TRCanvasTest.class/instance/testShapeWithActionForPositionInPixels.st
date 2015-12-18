events
testShapeWithActionForPositionInPixels

	| c s1 s2 |
	c := TRCanvas new.
	s1 := TRBoxShape new size: 20.
	s1 when: TRMouseClick do: [  ].

	s2 := TRBoxShape new size: 20.
	
	c addShape: s1.
	c addShape: s2.

	s2 translateTo: 30 @ 0.
	
	self assert: (c shapeWithActionForPositionInPixels: 250 @ 250) == s1.
	self assert: (c shapeWithActionForPositionInPixels: 280 @ 250) == c.
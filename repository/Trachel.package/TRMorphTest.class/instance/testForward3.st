forwarding
testForward3

	| s1 s2 c morph |
	s1 := TRBoxShape new size: 10.	
	s2 := TREllipseShape new size: 10.
	c := TRCanvas new.
	
	c addShape: s1. 
	c addShape: s2.
	
	morph := TRMorph new
		canvas: c;
		extent: c extent.
	
	self assert: (c shapeWithActionForPosition: (0 @ 0)) == c.
	
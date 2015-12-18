forwarding
testForward4

	| s c morph |
	s := TRBoxShape new size: 10.	
	c := TRCanvas new.
	c when: TRMouseMove do: [ :e | ].
	c addShape: s. 
	
	morph := TRMorph new
		canvas: c;
		extent: c extent.
	
	self assert: (c shapeWithActionForPosition: (0 @ 0)) == c.
	
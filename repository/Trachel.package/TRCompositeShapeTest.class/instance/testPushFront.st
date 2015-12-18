tests
testPushFront
	| c aShape |
	aShape := TRBoxShape new.

	c := TRCanvas new.
	c addShape: multiShape.
	c addShape: aShape.
	
	self assert: c numberOfShapes equals: (multiShape numberOfShapes + 1).
	multiShape pushFront.	
	self assert: (c shapes indexOf: aShape) equals: 1.
	self assert: (c shapes indexOf: multiShape shapes first) equals: 2.
	self assert: (c shapes indexOf: multiShape shapes last) equals: multiShape numberOfShapes + 1.
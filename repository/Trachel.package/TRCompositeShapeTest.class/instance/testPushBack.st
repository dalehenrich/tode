tests
testPushBack
	| c aShape |
	aShape := TRBoxShape new.

	c := TRCanvas new.
	c addShape: aShape.
	c addShape: multiShape.

	self assert: c numberOfShapes equals: (multiShape numberOfShapes + 1).
	multiShape pushBack.	
	self assert: (c shapes indexOf: aShape) equals: multiShape numberOfShapes + 1.
	self assert: (c shapes indexOf: multiShape shapes first) equals: multiShape numberOfShapes.
	self assert: (c shapes indexOf: multiShape shapes last) equals: 1
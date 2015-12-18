tests
testSetCanvas
	| c |
	c := TRCanvas new.
	multiShape canvas: c.
	self assert: box1 canvas equals: c.
	self assert: multiShape canvas equals: c
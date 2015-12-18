tests
testElementOnNonEmpty
	| c |
	multiShape element: 10.
	self assert: box1 element equals: nil.
	self assert: box2 element equals: nil.
	
	c := TRCanvas new.
	c addShape: multiShape.
	multiShape element: 10.
	self assert: box1 element equals: 10.
	self assert: box2 element equals: 10
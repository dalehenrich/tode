tests
testVerticalLayoutWithoutAddingToCanvas
	multiShape vertical.
"	canvas addShape: multiShape."
	
	self assert: (multiShape offsetOf: box1) equals: 0 @ 0.
	self assert: (multiShape offsetOf: box2) equals: 0 @ 25.

	self assert: box1 position equals: 0 @ 0.
	self assert: box2 position equals: 0 @ 0.
	
	

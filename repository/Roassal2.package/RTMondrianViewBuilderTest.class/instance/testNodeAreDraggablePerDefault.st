basic
testNodeAreDraggablePerDefault

	| el |
	el := builder node: 'hello'.
	self assert: el position = (0 @ 0).
	el announce: (TRMouseDragging step: 10 @ 5).
	self assert: (el position closeTo: (10 @ 5))
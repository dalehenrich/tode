tests
testDraggingOnNotDraggable
	view canvas announce: (TRMouseDragging step: 10 @ 5).
	self assert: view canvas camera position = (0 @ 0)
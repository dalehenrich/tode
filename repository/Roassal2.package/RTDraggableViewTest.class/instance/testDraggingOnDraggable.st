tests
testDraggingOnDraggable
	view @ RTDraggableView.
	view canvas announce: (TRMouseDragging step: 10 @ 5).
	self assert: (view canvas camera position closeTo: (-10 @ -5))
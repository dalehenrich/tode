tests
testSimpleDragAndDrop

	e1 @ RTDraggable.
	e1 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: (e1 position closeTo: (10 @ 15))
		
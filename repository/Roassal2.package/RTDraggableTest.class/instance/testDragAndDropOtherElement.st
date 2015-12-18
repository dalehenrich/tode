tests
testDragAndDropOtherElement

	e1 @ RTDraggable.
	e2 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: e1 position = (0 @ 0).
	self assert: e2 position = (0 @ 0).
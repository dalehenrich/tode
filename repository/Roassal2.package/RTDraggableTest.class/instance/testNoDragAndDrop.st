tests
testNoDragAndDrop

	e1 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: e1 position = (0 @ 0)
		
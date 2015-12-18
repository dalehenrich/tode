tests
testGroupedDragAndDrop

	e1 @ (RTDraggable groupToDrag: (Array with: e1 with: e2 with: e3)).
	e1 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: (e1 position closeTo: (10 @ 15)).
	self assert: (e2 position closeTo: (10 @ 15)).
	self assert: (e3 position closeTo: (10 @ 15)).
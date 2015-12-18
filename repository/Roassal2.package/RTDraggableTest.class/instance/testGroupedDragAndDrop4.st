tests
testGroupedDragAndDrop4
	
	e1 @ (RTDraggable groupToDrag: (Array with: e2 with: e3)).

	e2 translateBy: 5 @ 5.
	e3 translateBy: 10 @ 10.

	e1 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: (e1 position closeTo: (10 @ 15)).
	self assert: (e2 position closeTo: (15 @ 20)).
	self assert: (e3 position closeTo: (20 @ 25))
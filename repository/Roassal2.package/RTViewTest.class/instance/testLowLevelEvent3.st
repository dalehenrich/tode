low events
testLowLevelEvent3

	| v e |
	v := RTView new.
	e := (RTBox new size: 30) element.
	v add: e.
	e @ RTDraggable.
	self assert: (v canvas shapeWithAction: TRMouseDragging forPositionInPixels: 250 @ 250) == e trachelShape
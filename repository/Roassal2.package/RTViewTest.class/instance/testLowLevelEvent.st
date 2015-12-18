low events
testLowLevelEvent

	| v e |
	v := RTView new.
	e := (RTBox new size: 30) element.
	e @ RTDraggable.
	v add: e.

	self assert: (v canvas shapeWithAction: TRMouseDragging forPositionInPixels: 250 @ 250) == e trachelShape
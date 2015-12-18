low events
testLowLevelEvent02

	| v e |
	v := RTView new.
	e := (RTBox new size: 30) element.
	e when: TRMouseClick do: [ ].
	v add: e.

	self assert: (v canvas shapeWithAction: TRMouseClick forPositionInPixels: 250 @ 250) == e trachelShape
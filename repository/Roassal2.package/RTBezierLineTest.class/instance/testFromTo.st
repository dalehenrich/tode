tests
testFromTo

	| v e1 e2 e3 l |
	v := RTView new.
	e1 := RTBox element.
	e2 := RTBox element.
	e3 := RTBox element.
	e1 @ RTDraggable.
	e2 @ RTDraggable.
	l := RTBezierLine new controllingElements: (Array with: e3); edgeFrom: e1 to: e2.
	v add: e1; add: e2; add: l.
	
	self assert: l from == e1.
	self assert: l to == e2.
tests
testLineColorAndWidth
	| v e1 e2 l |
	v := RTView new.
	e1 := RTElement new.
	e2 := RTElement new.
	e1 + (RTBox new size: 10).
	e2 + (RTBox new size: 10).
	l := RTLine edgeFrom: e1 to: e2.
	e2 translateBy: 50 @ 40.
	l shape width: 10.
	l shape color: Color red.
	v addAll: (Array with: e1 with: e2 with: l).
	self assert: l trachelShape width = 1.
	l updateShape.
	self assert: l trachelShape width = 10.
	self assert: l trachelShape color = Color red.
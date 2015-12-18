encompassing
testEncompassingRectangle2

	| e1 e2 r |
	e1 := (RTBox new size: 10) element.
	e2 := (RTBox new size: 30) element.
	e2 translateTo: (100 @ 80).
	r := RTNest new encompassingRectangleOf: (Array with: e1 with: e2).
	self assert: r = ((-5 @ -5) corner: (115 @ 95))
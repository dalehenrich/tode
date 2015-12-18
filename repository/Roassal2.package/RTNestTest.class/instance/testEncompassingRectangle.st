encompassing
testEncompassingRectangle

	| e1 e2 r |
	e1 := (RTBox new size: 10) element.
	e2 := (RTBox new size: 30) element.
	
	r := RTNest new encompassingRectangleOf: (Array with: e1 with: e2).
	self assert: r = ((-15 @ -15) extent: (30 @ 30))
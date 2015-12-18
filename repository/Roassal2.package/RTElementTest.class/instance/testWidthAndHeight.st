tests
testWidthAndHeight

	| view outter inner |
	view := RTView new.
	outter := RTBox element.
	inner := (RTBox new color: Color green) element.
	RTNest new on: outter nest: (RTGroup with: inner).
	self assert: outter width = 15.
	self assert: outter height = 15.
	self assert: outter encompassingRectangle extent = (15 @ 15)
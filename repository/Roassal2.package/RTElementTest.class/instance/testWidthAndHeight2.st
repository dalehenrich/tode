tests
testWidthAndHeight2

	| view outter inners |
	view := RTView new.
	outter := RTBox element.
	inners := (RTBox new color: Color green) elementsOn: (1 to: 3).
	
	RTHorizontalLineLayout on: inners.
	RTNest new on: outter nest: inners.

	self assert: outter width = 45.
	self assert: outter height = 15.
	self assert: outter encompassingRectangle extent = (45 @ 15)
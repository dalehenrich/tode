ensure
testEnsure2

	builder rectangle color: Color red.
	builder ensure: RTEllipse.
	self assert: ((builder current color) rtValue: RTElement new) equals: (RTEllipse new color).
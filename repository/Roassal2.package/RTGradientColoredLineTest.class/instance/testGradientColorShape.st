tests
testGradientColorShape
	| e1 e2 shape |
	e1 := RTElement new.
	e2 := RTElement new.
	shape := RTGradientColoredLine new.
	shape gradientColorShape.
	shape edgeFrom: e1 to: e2.
	
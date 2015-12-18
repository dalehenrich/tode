tests
testGradientColorShape2
	| e1 e2 shape |
	e1 := RTElement new.
	e2 := RTElement new.
	e2 translateBy: 5 @ 5.
	shape := RTGradientColoredLine new.
	shape colors: (Array with: Color red with: Color blue).
	shape precision: 100.
	shape gradientColorShape.
	shape edgeFrom: e1 to: e2.
	
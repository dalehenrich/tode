tests
testBasic
	| e1 e2 l |
	e1 := RTElement new.
	e2 := RTElement new.
	l := RTGradientColoredLine edgeFrom: e1 to: e2.
	
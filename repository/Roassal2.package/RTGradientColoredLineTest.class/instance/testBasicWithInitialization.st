tests
testBasicWithInitialization
	| e1 e2 |
	e1 := RTElement new.
	e2 := RTElement new.
	(RTGradientColoredLine new color: (Array with: Color red with: Color blue)) 
		edgeFrom: e1 to: e2.
	
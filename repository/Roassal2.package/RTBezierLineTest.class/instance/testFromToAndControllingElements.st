tests
testFromToAndControllingElements

	| e1 e2 l |
	e1 := RTBox element.
	e2 := RTBox element.	
	l := RTBezierLine edgeFrom: e1 to: e2.
	self assert: l shape controllingElements isEmpty
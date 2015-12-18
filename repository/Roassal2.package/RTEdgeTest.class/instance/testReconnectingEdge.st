tests
testReconnectingEdge

	| e1 e2 e3 e4 l |
	e1 := RTBox element.
	e2 := RTBox element.
	e3 := RTBox element.
	e4 := RTBox element.
	l := RTLine edgeFrom: e1 to: e2.
	
	self assert: e2 incomingEdges size = 1.
	self assert: e1 outgoingEdges size = 1.
	self assert: e3 connectedEdges size = 0.
	self assert: e4 connectedEdges size = 0.
	
	l to: e3.
	self assert: e2 incomingEdges size = 0.
	self assert: e3 incomingEdges size = 1.

	l from: e4.
	self assert: e1 outgoingEdges size = 0.
	self assert: e4 outgoingEdges size = 1.

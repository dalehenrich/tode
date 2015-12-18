tests
testRemovingEdge

	| v e1 e2 l |
	v := RTView new.
	e1 := RTBox element.
	e2 := RTBox element.
	l := RTLine edgeFrom: e1 to: e2.
	v add: e1; add: e2; add: l.
	
	self assert: v numberOfEdges = 1.
	self assert: e2 incomingEdges size = 1.
	self assert: e1 outgoingEdges size = 1.
	
	l remove.
	
	self assert: v numberOfEdges = 0.
	self assert: e2 incomingEdges size = 0.
	self assert: e1 outgoingEdges size = 0.
	
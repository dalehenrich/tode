tests
testConnectedEdges01

	| e1 e2 l |
	e1 := RTBox element.
	e2 := RTBox element.
	self deny: (e1 isConnectedTo: e2).
	self deny: (e2 isConnectedTo: e1).
	
	l := RTLine edgeFrom: e1 to: e2.
	self assert: (e1 isConnectedTo: e2).
	self assert: (e2 isConnectedTo: e1).

	self assert: (e1 isDirectlyConnectedTo: e2).
	self deny: (e2 isDirectlyConnectedTo: e1).

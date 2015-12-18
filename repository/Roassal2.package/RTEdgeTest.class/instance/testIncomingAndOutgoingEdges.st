tests
testIncomingAndOutgoingEdges

	self assert: (el1 outgoingEdges includes: edge).
	self assert: (el2 incomingEdges includes: edge).
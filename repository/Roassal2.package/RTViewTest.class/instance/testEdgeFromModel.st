edges
testEdgeFromModel

	| e1 e2 edge |
	e1 := RTBox elementOn: 1.
	e2 := RTBox elementOn: 2.
	edge := RTLine edgeFrom: e1 to: e2.
	edge model: 'hello'.
	view add: e1; add: e2; add: edge.
	
	self assert: (view edgeFromModel: 'hello') equals: edge
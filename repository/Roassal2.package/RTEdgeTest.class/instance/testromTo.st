tests
testromTo

	el1 := RTBox elementOn: 4.
	el2 := RTBox elementOn: 2.
	edge := RTEdge from: el1 to: el2.
	self assert: edge model equals: 4->2.
	self assert: edge from == el1.
	self assert: edge to == el2
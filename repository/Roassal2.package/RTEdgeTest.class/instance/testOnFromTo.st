tests
testOnFromTo

	el1 := RTBox element.
	el2 := RTBox element.
	edge := RTEdge on: 10 from: el1 to: el2.
	self assert: edge model = 10.
	self assert: edge from == el1.
	self assert: edge to == el2
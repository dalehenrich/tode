edges
testElementsFromModel

	| e1 e2 e3 edge |
	e1 := RTBox elementOn: 1.
	e2 := RTBox elementOn: 2.
	e3 := RTBox elementOn: 1.
	edge := RTLine edgeFrom: e1 to: e2.
	edge model: 'hello'.
	view add: e1; add: e2; add: e3; add: edge.
	
	self assert: (view elementsFromModel: 'hello') isEmpty.
	self assert: (view elementsFromModel: 1) size equals: 2.
	self assert: (view elementsFromModel: 2) size equals: 1.
	self assert: (view elementsFromModel: 3) size equals: 0
tests
testRemoveElementsWithEdges

	| element1 element2 element3 edge1 edge2 |
	element1 := RTBox new element.
	element2 := RTEllipse new element.
	element3 := RTBox new element.
	edge1 := RTLine edgeFrom: element1 to: element2.
	edge2 := RTLine edgeFrom: element2 to: element3.
	self assert: view numberOfElements equals: 0.
	self assert: view numberOfEdges equals: 0.
	self assert: view canvas shapes size equals: 0.
	view add: element1; add: element2; add: element3; add: edge1; add: edge2.
	self assert: view numberOfElements equals: 3.
	self assert: view numberOfEdges equals: 2.
	self assert: view canvas shapes size equals: 5.

	view removeElements: (RTGroup with: element1).
	self assert: view numberOfElements equals: 2.
	self assert: view numberOfEdges equals: 1.
	self assert: view canvas shapes size equals: 3.

	view removeEdges: (RTGroup with: element2 with: element3).
	self assert: view numberOfElements equals: 0.
	self assert: view numberOfEdges equals: 0.
	self assert: view canvas shapes size equals: 0.

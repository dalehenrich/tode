edges
testAddingEdgeSetsTheElementInTrachelShape
	| el1 el2 edge |
	el1 := RTBox element.
	el2 := RTBox element.
	edge := RTLine edgeFrom: el1 to: el2.
	view add: el1; add: el2.
	view add: edge.	
	self assert: edge trachelShape element equals: edge
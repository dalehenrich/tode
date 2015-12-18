tests
testSimple2

	RTEdgeBuilder new
		view: view;
		fromAssociations: (Array 
									with: 1 -> 2
									with: 2 -> 3
									with: 5 -> 6).
	self assert: view numberOfEdges equals: 3
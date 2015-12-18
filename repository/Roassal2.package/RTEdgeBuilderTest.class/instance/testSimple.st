tests
testSimple

	RTEdgeBuilder new
		view: view;
		fromElementAssociations: (Array 
									with: elements first -> elements second
									with: elements second -> elements third).
	self assert: view numberOfEdges equals: 2
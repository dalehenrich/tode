tests
testSimple7

	RTEdgeBuilder new
		view: view;
		fromAssociation: 1 -> 2;
		fromAssociation: 2 -> 3;
		fromAssociation: 5 -> 6.

	self assert: view numberOfEdges equals: 3
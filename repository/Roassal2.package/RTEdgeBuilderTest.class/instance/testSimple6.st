tests
testSimple6

	RTEdgeBuilder new
		view: view;
		object: 1 fromAll: (Array with: 2) to: 3.
		
		
	self assert: view numberOfEdges equals: 1.

tests
testSimple4

	RTEdgeBuilder new
		view: view;
		objects: #(1 2 3 6) from: #yourself to: [ :v | v + 1 ] scope: #(1 2 3 6).
	self assert: view numberOfEdges equals: 2.
	self assert: (view edges collect: [ :e | e from model -> e to model ]) asArray equals: ((Array new: 2) at: 1 put: (1->2); at: 2 put: (2->3); yourself)
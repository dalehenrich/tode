tests
testSimple3

	RTEdgeBuilder new
		view: view;
		objects: #(1 2 3 6) from: #yourself to: [ :v | v + 1 ].
	self assert: view numberOfEdges equals: 4.
	self assert: (view edges collect: [ :e | e from model -> e to model ]) asArray equals: ((Array new: 4) at: 1 put: (1->2); at: 2 put: (2->3); at: 3 put: (3->4); at: 4 put: (6->7); yourself)
tests
testConnectTo
	| e |
	b view: view.
	b objects: #(1 2).
	b connectTo: [ :v | v - 1 ].
	
	self assert: view numberOfEdges equals: 1.
	
	e := view edges anyOne.
	self assert: e from model equals: 2.
	self assert: e to model equals: 1.
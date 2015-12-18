tests
testConnectFrom
	| e |
	b view: view.
	b objects: #(1 2).
	b connectFrom: [ :v | v - 1 ].
	
	self assert: view numberOfEdges equals: 1.
	
	e := view edges anyOne.
	self assert: e from model equals: 1.
	self assert: e to model equals: 2.
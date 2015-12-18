edges
testEdgesFrom

	| view |
	builder nodes: (Array with: 1 with: 2).
	builder edgesFrom: [ :v | v - 1 ].
	view := builder view.
	
	self assert: view numberOfElements equals: 2.
	self assert: view numberOfEdges equals: 1.
	
	self assert: view edges anyOne shape class == RTLine
edges
testEdgesFromToAll

	| view edge nodes |
	builder nodes: (Array with: 1 with: 2).
	builder edges: (Array with: 1) from: #yourself toAll: (Array with: 2).
	view := builder view.
	
	self assert: view numberOfElements equals: 2.
	self assert: view numberOfEdges equals: 1.
	
	edge := view edges anyOne.
	nodes := view elements.
	self assert: edge from == nodes first.
	self assert: edge to == nodes second.
	self assert: edge shape class == RTLine
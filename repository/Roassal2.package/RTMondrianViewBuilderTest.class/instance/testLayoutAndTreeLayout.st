layout
testLayoutAndTreeLayout
	| view |
	builder nodes: (Array with: 'hello') forEach: [ :e |
		
		builder nodes: (1 to: 5).
		builder shape line color: Color black.
		builder edges: (Array with: 1) from: #yourself toAll: (1 to: 5).
		builder treeLayout. 
		].
	builder gridLayout.
	builder applyLayout.
	
	view := builder view.
	self assert: (view elementFromModel: 1) position ~= (view elementFromModel: 2) position
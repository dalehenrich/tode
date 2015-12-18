tests - edges
testBasicEdges

	b nodes: #(1 2).
	b edges
		connectTo: [ :v | v + 1 ].
	b build.
	
	self assert: b view edges size equals: 1
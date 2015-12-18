tests - edges
testBasicEdgesAndTree

	b nodes: #(1 2).
	b edges
		connectTo: [ :v | v + 1 ].
	b layout tree.
	b build.
	
	self assert: b view edges size equals: 1
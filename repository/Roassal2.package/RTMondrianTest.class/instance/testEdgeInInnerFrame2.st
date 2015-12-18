tests - edges
testEdgeInInnerFrame2

	b node: '1'
		forIt: [ 
			b shape rectangle.
			b nodes: (1 to: 2).
			b shape line color: Color red.
			b edges connectFrom: #yourself.
			b layout verticalLine ].
	b build.
	
	self assert: b view numberOfEdges equals: 2.
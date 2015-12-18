tests - edges
testEdgeInInnerFrame3

	b node: '1'
		forIt: [ 
			b shape rectangle.
			b nodes: (1 to: 2).
			b shape line color: Color red.
			b edges connectTo: [ :v | v + 1 ].
			b layout verticalLine ].
	b build.
	
	self assert: b view numberOfEdges equals: 1.
	self assert: b view edges anyOne trachelShape from equals: (8.0@7.5).
	self assert: b view edges anyOne trachelShape to equals: (8.0@22.5).
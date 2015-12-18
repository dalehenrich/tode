tests - edges
testEdgeInInnerFrame

	b node: '1'
		forIt: [ 
			b nodes: (1 to: 2).
			b edges connectFrom: #yourself.
			b layout verticalLine ].
	b node: '2'
		forIt: [ 
			b nodes: (3 to: 4).
			b layout tree ].
	b layout horizontalLine.
	b build
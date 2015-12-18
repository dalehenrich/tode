edges
testTwiceDefiningEdges

	builder nodes: (1 to: 20).
	builder shape line 
		colorElement: [ :edge | (edge from model = 2) 
								ifTrue: [ Color red. ] 
								ifFalse: [ Color lightGray ] ].
		
	builder edgeFromAssociation: 2 ->  18.
	builder edgesToAll: [ :v | Array with: v + 3 with: v + 5 with: v *2 ]
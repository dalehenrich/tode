basic
testNestingSmallTree

	builder nodes: #(100) forEach: [ :v | 
		builder nodes: #(1 2 3 4). 
		builder edges: #(1 2 3 4) from: [ :vv | vv // 2 ] to: #yourself.
		builder treeLayout ].
	
	self assert: builder view numberOfElements = 5.
	self assert: builder view numberOfEdges = 3.
	self assert: builder topLevelNodes size = 1.
	self assert: (builder view elementFromModel: 100) position = (0 @ 0).
	 
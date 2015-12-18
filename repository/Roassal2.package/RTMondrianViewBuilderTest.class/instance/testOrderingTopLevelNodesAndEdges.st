basic
testOrderingTopLevelNodesAndEdges

	| v c shapes |
	builder nodes: (1 to: 2).
	builder edgesFromAssociations: (Array with: 1 -> 2).
	v := builder view.
	self assert: v numberOfElements = 2.
	self assert: v numberOfEdges = 1.
	
	c := v canvas.
	self assert: c numberOfShapes = 3.

	shapes := c shapes.
	self assert: shapes first class == TRLineShape.
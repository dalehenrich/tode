testing
isConnectedWith: aNode
	^ ((element incomingEdges collect: [ :e | e from attributes at: #node ]) includes: aNode) |
		((element outgoingEdges collect: [ :e | e to attributes at: #node ]) includes: aNode)
initialization
addConnectedEdge: anEdge
	[  anEdge class == RTEdge ] assert.
	self connectedEdges add: anEdge
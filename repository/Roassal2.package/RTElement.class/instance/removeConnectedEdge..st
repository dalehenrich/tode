initialization
removeConnectedEdge: anEdge
	[  anEdge class == RTEdge ] assert.
	self connectedEdges remove: anEdge ifAbsent: [ "Some RTDowserBuilderTest tests failed." ]
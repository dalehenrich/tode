nodes
nodeFor: aTDPPINode
	| node wrappedObjectID |
	wrappedObjectID := self idForWrappedObject: aTDPPINode.
	node := self nodesMap at: wrappedObjectID ifAbsentPut: [ RPDNode new wrappedObject: aTDPPINode ].
	^ node
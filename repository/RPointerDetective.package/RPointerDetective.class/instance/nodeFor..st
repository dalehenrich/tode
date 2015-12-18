as yet unclassified
nodeFor: wrappedObject
	|  node wrappedObjectID |
	wrappedObjectID := self idForWrappedObject: wrappedObject.
	node := self nodesMap at: wrappedObjectID ifAbsentPut: [
		RPDNode new wrappedObject: wrappedObject
		].
	^ node
	
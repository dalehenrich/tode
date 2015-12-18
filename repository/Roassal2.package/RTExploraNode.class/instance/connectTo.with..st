adding
connectTo: aNode with: lineShape
	| edge |
	self assert: (aNode isKindOf: RTExploraNode).
	(self isConnectedWith: aNode)
		ifFalse: [
			edge := RTEdge from: self element to: aNode element.
			builder view add: edge + lineShape.
			edge trachelShape pushBack.
			self addToExpansion: aNode.
			aNode addToExpansion: self.
		]
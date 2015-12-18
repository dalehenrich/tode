actions
removeAllAddedEdges
	self class lastHighlightedElements ifNil: [ ^ self ].
	(self class lastHighlightedElements select: [ :edge | edge view notNil ]) 
		do: #remove.
	self class lastHighlightedElements: nil
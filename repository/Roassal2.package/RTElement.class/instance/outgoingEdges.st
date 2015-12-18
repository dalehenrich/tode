accessing
outgoingEdges
	connectedEdges ifNil: [ ^ #() ].
	^ self connectedEdges select: [ :e | e from == self ]
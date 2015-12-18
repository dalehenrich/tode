accessing
incomingEdges
	connectedEdges ifNil: [ ^ #() ].
	^ self connectedEdges select: [ :e | e to == self ]
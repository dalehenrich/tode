actions
removeWithItsConnectedEdges
	view ifNil: [ self error: 'cannot remove an element that is not part of a view' ].
	self connectedEdges copy do: [ :anEdge | anEdge view ifNotNil: [ anEdge remove ] ].
	view removeElement: self.
	view := nil 
actions
remove
	view ifNil: [ self error: 'cannot remove an element that is not part of a view' ].
	view removeElement: self.
	self removeConnectedEdges.
	view := nil 
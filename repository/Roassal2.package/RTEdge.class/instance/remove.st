actions
remove
	view ifNil: [ self error: 'cannot remove an element that is not part of a view' ].
	(to connectedEdges includes: self) 
		ifTrue: [to connectedEdges remove: self].
	(from connectedEdges includes: self)
		ifTrue: [from connectedEdges remove: self].
	(view isNil)
		ifFalse: [  
			view removeEdge: self.
			view := nil]
removing
remove
	element incomingEdges do: [ :edge |
		(edge from attributes at: #node) removeExpandedNode: self. edge remove ].
	element outgoingEdges do: [ :edge |
		(edge to attributes at: #node) removeExpandedNode: self. edge remove ].
	element remove.
	(iconOpen isNotNil & self isExpandable) ifTrue: [ (self isExpanded) ifTrue: [iconClose remove] ifFalse: [iconOpen remove]].
	builder nodes remove: self.
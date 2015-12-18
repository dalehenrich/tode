removing
removeExpandedNode: aNode
	self assert: (aNode isKindOf: RTExploraNode).
	directions keys do: [ :direction | 
		(expandedNodes at: direction) remove: aNode ifAbsent: [] ]
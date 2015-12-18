building
doActionsOnEdgesFor: elements
	| allEdges asSet |
	actionOnEdges ifEmpty: [ ^ self ].
	allEdges := OrderedCollection new.
	elements do: [ :e | allEdges addAll: e connectedEdges ].
	asSet := allEdges asSet.
	actionOnEdges
		do: [ :act | 
			asSet
				do: [ :e | 
					e isUsedInLayout
						ifTrue: [ act rtValue: e ] ] ]
actions
doHideEdges: element
	(element attributes includesKey: #showEdges)
		ifFalse: [ ^ self ].

	(element attributes at: #showEdges) do: #remove.

	element attributes removeKey: #showEdges
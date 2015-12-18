actions
doShowEdges: element
	| t edges |
	self removeAllAddedEdges.

	t := (connectToElements rtValue: element).
	t := t copyWithout: nil.
	edges := (shape rtValue: element) edgesFrom: element toAll: t.
	element view addAll: edges.
	element attributes at: #showEdges put: edges.
	self class lastHighlightedElements: edges
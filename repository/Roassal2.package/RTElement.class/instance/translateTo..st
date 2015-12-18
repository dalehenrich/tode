actions
translateTo: newPosition
	"Translate the element to a new position. If I am connected to some edges, the edges are also updated."

	trachelShape translateTo: newPosition.
	self updateConnectedEdges
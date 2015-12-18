actions
translateBy: delta
	"Translate the element by an incremental step. If I am connected to some edges, the edges are also updated."
	"self translateTo: self position + delta"
	trachelShape translateBy: delta.
	self updateConnectedEdges
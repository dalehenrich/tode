actions
rotateByDegrees: degree
	"Translate the element to a new position. If I am connected to some edges, the edges are also updated."

	trachelShape rotateByDegrees: (degree rtValue: self model).
	
	"No idea what to do with that"
	"self updateConnectedEdges"
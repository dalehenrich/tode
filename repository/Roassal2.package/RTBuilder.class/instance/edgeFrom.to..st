public
edgeFrom: source to: target 
	"source and target are elements"
	| newEdge |
	newEdge := shapeBuilder edgeFrom: source to: target.
	view add: newEdge.
	^ newEdge
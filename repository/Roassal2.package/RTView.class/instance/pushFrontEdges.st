actions
pushFrontEdges
	"Move all the edges in the front"
	self edges do: [ :e | e trachelShape pushFront ]
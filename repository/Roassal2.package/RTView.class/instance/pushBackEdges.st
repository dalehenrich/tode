actions
pushBackEdges
	"Move all the edges in the background"
	self edges do: [ :e | e trachelShape pushBack ]
utility
setAlpha: alpha for: element
	element connectedEdges do: [ :e | e trachelShape allColor: (e trachelShape color alpha: alpha) ]
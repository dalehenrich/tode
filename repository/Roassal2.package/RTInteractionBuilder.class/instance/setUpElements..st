building
setUpElements: elements
	"elements is an RTGroup, that contains RTElement or RTEdges"
	interactions do: [ :int | elements @ int ]
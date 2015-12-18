public
unhighlightOutgoingEdgesOf: element
	"Blink all the edges that leave the node element"
	element view elementsAsEdge 
		do: [ :edg | (edg from == element) ifTrue: [ self unhighlight: edg ] ].
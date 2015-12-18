public
highlightIncomingEdgesOf: element
	"Blink all the edges that leave the node element"
	element view elementsAsEdge 
		do: [ :edg | (edg to == element) ifTrue: [ self highlight: edg ] ].
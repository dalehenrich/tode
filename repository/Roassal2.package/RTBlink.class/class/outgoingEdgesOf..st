public
outgoingEdgesOf: element
	"Blink all the edges that leave the node element"
	element view edges 
		do: [ :edg | (edg to == element) ifTrue: [ RTBlink on: edg ] ].
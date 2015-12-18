public
incomingEdgesOf: element
	"Blink all the edges that leave the node element"
	element view edges 
		do: [ :edg | (edg from == element) ifTrue: [ RTBlink on: edg ] ].
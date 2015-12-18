hooks
initializeElement: element
	| recursiveDrag set |
	
	set := Set new.
	
	recursiveDrag := [ :elem :ancestor|
		set add: elem.
		elem outgoingEdges do: [ :edge |
			(edge to = ancestor) ifFalse: [
				recursiveDrag value: edge to value: ancestor].
			].
		].
	
	element when: TRMouseDragging do: [ :e |
		| d |
		recursiveDrag value: e element value: e element. e signalUpdate.
		d := element view canvas camera distanceFromPixelToSpace: e step.
		set do: [ :e1 | e1 translateBy: d ].
		 ]
	
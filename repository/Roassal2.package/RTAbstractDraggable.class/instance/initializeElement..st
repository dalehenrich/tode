hooks
initializeElement: element
	element when: TRMouseDragging do: [ :e | 
		| d t |
		t := RTGroup withAll: groupToDrag.
		(t includes: element) ifFalse: [ t add: element ].
		d := element view canvas camera distanceFromPixelToSpace: e step.
		t translateBy: (self transformDistance: d forElement: element). 
		self constraintIfNecessary: element.
		e signalUpdate ]
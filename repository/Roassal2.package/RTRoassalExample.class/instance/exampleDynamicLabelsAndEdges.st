sources
exampleDynamicLabelsAndEdges

	| view elements |
	view := RTView new.
	elements := RTEllipse new size: 30; elementsOn: (1 to: 20).
	view addAll: elements.
	RTCircleLayout new initialRadius: 150; on: elements.
	elements @ (RTShowLabel new highlight: [ :value | value - 5 to: value + 5]; center; yourself).
	elements @ (RTShowEdge new 
						connectTo: [ :value | value - 5 to: value + 5]; 
						shape: (RTLine new color: (Color blue alpha: 0.4))).
	^ view
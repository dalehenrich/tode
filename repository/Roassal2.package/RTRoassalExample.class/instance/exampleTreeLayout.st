sources
exampleTreeLayout

	| view |
	view := RTView new.	
	view addAll: (RTBox elementsOn: Collection withAllSubclasses) @ RTDraggable.
	RTEdge 
		buildEdgesFromObjects: Collection 
		withAllSubclasses from: #superclass to: #yourself inView: view.
	RTTreeLayout on: view elements edges: view edges.
	view @ RTDraggableView.
	view edges do: [ :e | e trachelShape pushBack ].
	^ view
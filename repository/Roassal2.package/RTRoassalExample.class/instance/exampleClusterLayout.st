sources
exampleClusterLayout

| v |
	v := RTView new.
	v addAll: ((RTEllipse new color: Color purple; size: 10) elementsOn: Collection withAllSubclasses) @ RTDraggable.
	RTEdge buildEdgesFromObjects: Collection withAllSubclasses from: #superclass to: #yourself inView: v.
	RTClusterLayout on: v elements edges: v edges.
	v edges do: [ :e | e trachelShape pushBack ].

	^ v
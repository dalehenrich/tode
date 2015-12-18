sources
exampleforAddWithEdges

| v es elements edges |
v := RTView new.
es := (RTBox new color: Color white; borderColor: Color lightGray) elementsOn: (Array with: RTLayout with: RTShape with: RTBuilder ).
v addAll: es.
es @ RTDraggable.

RTNest new
	for: es add: [ :group :model |
		elements := (RTBox new color: Color red) elementsOn: model withAllSubclasses.
		group addAll: elements.
		edges := RTEdgeBuilder new
			view: group;
			objects: model withAllSubclasses
			from: #superclass.
		RTTreeLayout on: elements edges: edges .
	].

RTGridLayout on: es.

	^ v
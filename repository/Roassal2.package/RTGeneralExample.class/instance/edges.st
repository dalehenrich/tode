shapes
edges
	"
	self new edges
	"

	| view elements |
	view := RTView new.
	elements := (RTBox new color: (Color purple alpha: 0.2)) elementsOn: (Collection withAllSubclasses).
	view addAll: elements.
	
	RTEdge 
		buildEdgesFromObjects: Collection withAllSubclasses 
		from: #yourself 
		to: #superclass 
		using: (RTLine new color: (Color blue alpha: 0.2))
		inView: view.
	
	RTGridLayout on: view elements.
	view open
sources
exampleForceBasedLayoutAnimated

	| v classes edges | 
	v := RTView new.
	classes := (RTEllipse new color: (Color purple alpha: 0.3); size: 10) elementsOn: Collection withAllSubclasses.
	(classes elementFromModel: Collection) trachelShape color: Color red.
	classes @ RTDraggable.
	v addAll: classes.

	edges := RTEdge buildEdgesFromObjects: Collection withAllSubclasses from: #superclass to: #yourself using: (RTLine new color: (Color purple alpha: 0.2)) inView: v.

	edges do: [ :e | e trachelShape pushBack ].

	"RTForceBasedLayout on: v elements edges: v edges."
	v addAnimation: (RTSpringLayoutStepping new view: v).
	v @ RTDraggableView.

	^ v
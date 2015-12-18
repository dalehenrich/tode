sources
exampleOrthoVerticalLines

| v  eb |
v := RTView new.
v addAll: (RTBox elementsOn: Collection withAllSubclasses).

eb := RTEdgeBuilder new.
eb shape orthoVerticalLine.
eb view: v.
eb	objects: Collection withAllSubclasses
	from: #superclass
	to: #yourself;
	build.

v elements @ RTDraggable @ RTPopup.
RTTreeLayout on: v elements.

	^ v
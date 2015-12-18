sources
exampleOrthoHorizontalLines
| v eb |
v := RTView new.
v addAll: (RTBox elementsOn: Collection withAllSubclasses).

eb := RTEdgeBuilder new.
eb shape orthoHorizontalLine.
eb view: v.
eb	objects: Collection withAllSubclasses
	from: #superclass
	to: #yourself;
	build.

v elements @ RTDraggable @ RTPopup.
RTHorizontalTreeLayout on: v elements.

	^ v
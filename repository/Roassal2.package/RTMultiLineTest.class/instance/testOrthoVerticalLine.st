tests
testOrthoVerticalLine

	| eb |
	v addAll: (RTBox elementsOn: Collection withAllSubclasses).

	eb := RTEdgeBuilder new.
	eb shape orthoVerticalLine.
	eb view: v.
	eb	objects: Collection withAllSubclasses
		from: #superclass
		to: #yourself;
		build.

	RTTreeLayout on: v elements.
	v
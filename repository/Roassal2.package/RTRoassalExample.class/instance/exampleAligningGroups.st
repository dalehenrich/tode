sources
exampleAligningGroups

| rootClasses groups v elements edges |
rootClasses := Array with: RTShape with: RTLayout with: RTBuilder.

groups := rootClasses collect: [ :cls |  | g |
	g := RTGroup new.
	elements := (RTEllipse new size: 8; color: Color blue) elementsOn: cls withAllSubclasses.
	g addAll: elements.
	edges := RTEdgeBuilder new
		view: g;
		objects: cls withAllSubclasses from: #superclass.
	RTForceBasedLayout on: elements edges: edges.
	g
	].

v := RTView new.
groups do: [ :aGroup | v addAll: aGroup ].
RTHorizontalLineLayout new gapSize: 30; on: groups.

TRConstraint alignFromBottom: groups.

	^ v
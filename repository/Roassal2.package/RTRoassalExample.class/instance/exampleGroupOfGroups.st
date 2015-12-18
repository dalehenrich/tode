sources
exampleGroupOfGroups

| objects groups edgesBlock1 edgesBlock2 colorNormalizer groupsOfElements v predicate layoutClass filteredObjects shape elements edges |
objects := Collection withAllSubclasses.
groups := Array with:  
([ :c | c name endsWith: 'List' ] -> RTGridLayout new) with:
([ :c | '*Set*' match: c name ] ->  RTForceBasedLayout new) with:
([ :c | '*Dictionary*' match: c name ] ->  RTTreeLayout new) with:
([ :c | c name endsWith: 'Array' ] ->  (RTWeightedCircleLayout new initialRadius: 60)).

edgesBlock1 := [ :c | c dependentClasses ].
edgesBlock2 := [ :c | Array with: c superclass ].


colorNormalizer := RTMultiLinearColorForIdentity new numberOfColors: groups size.
groupsOfElements := RTGroup new.
v := RTView new.
groups doWithIndex: [ :assoc :index |
	predicate := assoc key.
	layoutClass := assoc value.
	filteredObjects := objects select: predicate.
	shape := RTEllipse new size: 20; color: (colorNormalizer rtValue: index).
	elements := shape elementsOn: filteredObjects.
	elements @ RTPopup.
	elements when: TRMouseClick do: [ :evt | evt element model inspect ].
	v add: elements.
	groupsOfElements add: elements.
	edges := RTEdge 
		buildEdgesFromObjects: filteredObjects from: #yourself toAll: edgesBlock1 using: (RTLine new color: Color red) scope: elements.
	v addAll: edges.	

	layoutClass  on: elements edges: edges.

	v addAll: (RTEdge 
		buildEdgesFromObjects: filteredObjects from: #yourself toAll: edgesBlock2 using: (RTLine new color: Color green) scope: elements).		
].

RTFlowLayout on: groupsOfElements.

	^ v
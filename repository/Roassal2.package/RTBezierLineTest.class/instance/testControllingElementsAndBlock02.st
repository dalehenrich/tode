tests
testControllingElementsAndBlock02
	| es shape1 edge1 shape2 edge2 |
	
	es := RTBox elementsOn: (1 to: 5).
	shape1 := RTBezierLine new.
	shape1 centerOfElements: [ :edge | 
		es copyFrom: edge from model + 1 to: edge to model - 1 ].
	edge1 := shape1 edgeFrom: es first to: es fourth.
	
	shape2 := RTBezierLine new.
	shape2 centerOfElements: [ :edge | 
		es copyFrom: edge from model + 1 to: edge to model - 1 ].
	edge2 := shape2 edgeFrom: es first to: es last.

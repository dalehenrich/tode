tests
testControllingElementsAndBlock
	| es shape1 edge1 shape2 edge2 v |
	
	es := RTBox elementsOn: (1 to: 5).
	v := RTView new.
	v addAll: es.
	
	shape1 := RTBezierLine new.
	shape1 controllingElements: [ :edge | 
		Array 
			with: (v elementFromModel: 2)
			with: (v elementFromModel: 3) ].
	edge1 := shape1 edgeFrom: es first to: es fourth.
	
	shape2 := RTBezierLine new.
	shape2 controllingElements: [ :edge | 
		Array 
			with: (v elementFromModel: 3)
			with: (v elementFromModel: 4) ].
	edge2 := shape2 edgeFrom: es first to: es last.

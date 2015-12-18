tests
testControllingElementsAndBlock03
	| v es shape1 edge1 shape2 edge2 |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 5).
	v addAll: es.

	shape1 := RTBezierLine new.
	shape1 centerOfObjects: #(2 3) inView: v.
	edge1 := shape1 edgeFrom: es first to: es fourth.
	
	shape2 := RTBezierLine new.
	shape1 centerOfObjects: #(3 4) inView: v.
	edge2 := shape2 edgeFrom: es first to: es last.

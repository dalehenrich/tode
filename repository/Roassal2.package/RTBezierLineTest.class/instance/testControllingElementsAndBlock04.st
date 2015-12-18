tests
testControllingElementsAndBlock04
	| v es shape1 edge1 shape2 edge2 |
	v := RTView new.
	es := (RTEllipse new size: 10; color: (Color blue alpha: 0.4)) elementsOn: (1 to: 5).
	v addAll: es.
	es @ RTDraggable @ RTPopup.

	shape1 := RTBezierLine new.
	shape1 centerOfObjects: [ :f :t | f + 1 to: t -1 ] inView: v.
	edge1 := shape1 edgeFrom: es first to: es fourth.
	
	shape2 := RTBezierLine new.
	shape2 centerOfObjects: [ :f :t | f + 1 to: t -1 ] inView: v.
	edge2 := shape2 edgeFrom: es first to: es last.

	v add: edge1; add: edge2.
	
	RTHorizontalLineLayout on: es.
	
"	v open."
	self assert: edge1 trachelShape  numberOfPoints = 3.
	self assert: edge2 trachelShape  numberOfPoints = 3
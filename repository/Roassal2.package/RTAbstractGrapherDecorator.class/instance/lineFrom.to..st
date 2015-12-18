utility
lineFrom: fromPoint to: toPoint
	| e1 e2 l |
	e1 := (RTEllipse new size: 0) element.
	e2 := (RTEllipse new size: 0) element.
	e1 translateTo: fromPoint.
	e2 translateTo: toPoint.
	l := shapeBuilder edgeFrom: e1 to: e2.
	builder view add: e1; add: e2; add: l.
	^ l
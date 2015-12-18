edges
arrowedEdges01
	"
	self new arrowedEdges01
	"

	| v e1 e2 l |
	v := RTView new.
	e1 := (RTEllipse new size: 10) element.
	e2 := (RTEllipse new size: 10) element.
	e2 translateBy: 100@0.

	e1 @ RTDraggable.
	e2 @ RTDraggable.
	
	v add: e1.
	v add: e2.
	l := RTEdge from: e1 to: e2.
	l + (RTLine new color: Color red) + (RTSimpleArrowHead new color: Color red).
	v add: l.

	v open
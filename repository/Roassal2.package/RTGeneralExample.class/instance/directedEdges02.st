edges
directedEdges02
	"
	self new directedEdges02
	"

| v elements1 elements2 objects1 objects2 shape1 shape2 assocs |

objects1 := 1 to: 5.
objects2 := 6 to: 10.
assocs := Array with: 1 -> 5 with: 2 -> 6 with: 6 -> 10 with: 10 -> 2.


v := RTView new.
v @ RTDraggableView.

shape1 := RTEllipse new size: 10; color: (Color gray alpha: 0.3).
shape2 := RTEllipse new size: 10; color: (Color pink alpha: 0.3).
elements1 := shape1 elementsOn: objects1.
elements2 := shape2 elementsOn: objects2.

elements1 @ RTPopup.
elements2 @ RTPopup.

v addAll: elements1.
v addAll: elements2.

RTEdge 
	buildEdgesFromObjects: assocs
	from: #key
	to:  #value 
	using: (RTDirectedLine new color: (Color blue alpha: 0.5)) inView: v.


RTHorizontalLineLayout new gapSize: 1;on: elements1, elements2.

v open
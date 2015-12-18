edges
dynamicEdges01
	"
	self new dynamicEdges01
	"

| v es |
v := RTView new.
es := ((RTEllipse new size: 30) + RTLabel) elementsOn: (1 to: 20).
v addAll: es.
RTCircleLayout new initialRadius: 150; on: es.

es @ (RTShowEdge new connectTo: [ :value | value - 5 to: value + 5]; shape: (RTLine new color: (Color blue alpha: 0.4))).

v open
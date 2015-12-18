sources
exampleWeightedCircle

| v es |
v := RTView new.

es := (RTEllipse new size: #yourself) elementsOn: (1 to: 130 by: 10).
v addAll: es.

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :value | value // 2 ].

RTWeightedCircleLayout new on: es.
^ v
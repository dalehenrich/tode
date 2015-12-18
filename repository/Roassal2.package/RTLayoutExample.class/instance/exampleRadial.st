sources
exampleRadial

| v es |
v := RTView new.

es := (RTEllipse new size: 12) elementsOn: (1 to: 50).
v addAll: es.

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :value | value // 2 ].

RTRadialTreeLayout new on: es.
^ v
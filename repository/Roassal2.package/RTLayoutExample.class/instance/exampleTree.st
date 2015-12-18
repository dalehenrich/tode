sources
exampleTree

| v es |
v := RTView new.

es := (RTEllipse new size: 12) elementsOn: (1 to: 100).
v addAll: es.

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :value | value // 3 ].

RTTreeLayout new on: es.
^ v
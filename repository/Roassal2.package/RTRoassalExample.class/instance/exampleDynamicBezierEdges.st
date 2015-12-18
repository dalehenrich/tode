sources
exampleDynamicBezierEdges

	| v es |
	v := RTView new.
	es := ((RTEllipse new size: 30) + RTLabel) elementsOn: (1 to: 20).
	v addAll: es.
	RTCircleLayout new initialRadius: 150; on: es.

	es @ (RTShowEdge new 
				connectTo: [ :value | value - 5 to: value + 5]; 
				shape: [ :el | RTBezierLine new 
									centerOfObjects: (el model - 5 to: el model + 5) inView: v; 
									color: (Color blue alpha: 0.4) ] ).


	^ v
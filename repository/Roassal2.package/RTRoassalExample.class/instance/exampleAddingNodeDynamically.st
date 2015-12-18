sources
exampleAddingNodeDynamically
| v stepping |
v := RTView new.
v @ RTDraggableView.
stepping := RTSpringLayoutStepping new view: v.
stepping after: [ v canvas camera focusOnCenter ].
v addAnimation: stepping.

v canvas addMenu: 'Add circle' callback: [ 
	| el |
	el := (RTEllipse new size: 20; color: (Color blue alpha: 0.4)) element.
	el @ RTDraggable.
	el translateTo: 5 atRandom @ 5 atRandom.
	v add: el.
	stepping addNode: el.
	v signalUpdate.
].

v canvas addMenu: 'Add connected circle' callback: [ 
	| el edge |
	el := (RTEllipse new size: 20; color: (Color blue alpha: 0.4)) element.
	el @ RTDraggable.
	el translateTo: 5 atRandom @ 5 atRandom.
	v add: el.

	edge := RTLine edgeFrom: el to: v elements atRandom.
	v add: edge.

	stepping addNode: el; addEdge: edge.
	v signalUpdate.
].

	^ v
sources
exampleAddingAndRemovingEdges

| v es anim edges |
v := RTView new.
v @ RTDraggableView.

es := RTEllipse new elementsOn: RTObject withAllSubclasses.
v addAll: es.
RTMetricNormalizer new
	elements: es;
	normalizeSize: #numberOfLinesOfCode min: 5 max: 30 using: [:vv | vv sqrt * 5 ];
	normalizeColor: #numberOfMethods using: (Array with: Color green with: Color red );
	alphaColor: 0.3.
	 
anim := RTSpringLayoutStepping new view: v.
v addAnimation: anim. 

v addMenu: 'add edges' callback: [ 
	edges := RTEdgeBuilder new
		view: v;
		objects: RTObject withAllSubclasses from: #superclass.
	anim addEdges: edges ].

v addMenu: 'remove edges' callback: [ 
	v edges do: #remove.
	anim removeAllEdges.
	v signalUpdate ].

	^ v
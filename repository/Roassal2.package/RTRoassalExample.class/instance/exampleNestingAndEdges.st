sources
exampleNestingAndEdges

| v es |
v := RTView new.
es := (RTBox new color: (Color blue alpha: 0.4)) elementsOn: (RTShape withAllSubclasses).
v addAll: es.

RTNest new
	for: es add: [ :group :model | 
		group addAll: (RTBox new elementsOn: model rtmethods).
		RTGridLayout on: group ].
	
es @ (RTShowEdge new 
			connectTo: #dependentClasses; 
			shape: (RTLine new color: Color red);
			yourself).
es @ (RTShowLabel new 
			color: Color red;
			highlight: #dependentClasses; top; yourself).
RTGridLayout on: es.

	^ v
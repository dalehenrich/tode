edges
testPushBackEdges

	| es lastEdge |
	es := RTBox new elementsOn: (1 to: 10).
	view addAll: es.
	
	RTEdgeBuilder new
		view: view;
		objects: (1 to: 10) from: [ :aValue | aValue // 3 ] to:  #yourself.
	view add: (RTBox element).
	RTTreeLayout on: es.
	
	
	lastEdge := view edges last.
	self assert: (view canvas shapes indexOf: lastEdge trachelShape) equals: 18.
	view pushBackEdges.
	self assert: (view canvas shapes indexOf: lastEdge trachelShape) equals: 1.
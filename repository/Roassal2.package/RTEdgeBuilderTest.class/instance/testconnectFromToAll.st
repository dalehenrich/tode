tests
testconnectFromToAll

	| es1 es2 edges |
	es1 := RTEllipse elementsOn: #(1 2 3).
	es2 := RTBox elementsOn: #(1 2 3).
	edges := RTEdgeBuilder new
					elements: es1;
					elementsToLookup: es2;
					connectFrom: #yourself toAll: [ :obj | Array with: obj ].
	self assert: edges size equals: 3.
	
	self assert: edges first from equals: es1 first.
	self assert: edges first to equals: es2 first.
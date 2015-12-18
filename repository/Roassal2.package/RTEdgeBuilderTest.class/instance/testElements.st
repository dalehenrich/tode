tests
testElements

	| es |
	b := RTEdgeBuilder new.
	b view: view.
	self assert: b elements equals: view elements.
	
	es := RTBox elementsOn: (1 to: 4).
	b elements: es.
	self assert: b elements equals: es.
tests
testRemoveElements

	| es |
	es := RTBox elementsOn: (1 to: 5).
	self assert: view numberOfElements equals: 0.
	view addAll: es.
	self assert: view numberOfElements equals: 5.
	es remove.
	self assert: view numberOfElements equals: 0.
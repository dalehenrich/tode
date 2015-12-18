tests
testObjects
	b view: view.
	b objects: (1 to: 5).
	self assert: b elements equals: (elements copyFrom: 1 to: 5)

"	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."
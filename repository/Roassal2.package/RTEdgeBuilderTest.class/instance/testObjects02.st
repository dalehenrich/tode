tests
testObjects02
	b view: view.
	b objects: #even.
	self assert: (b elements collect: #model) asArray equals: #(2 4 6 8 10)

"	view := RTView new.
	elements := RTBox elementsOn: (1 to: 10).
	view addAll: elements. 
	b := RTEdgeBuilder new."
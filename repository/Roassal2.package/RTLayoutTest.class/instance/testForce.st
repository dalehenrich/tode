tests
testForce
	| v es layout |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 2).
	v addAll: es.
	RTEdge buildEdgesFromObjects: (1 to: 2) from: #yourself toAll:  [:value | 
		Array with: value -1 with: value + 1 with: value + 2 ] inView: v.
	
	layout := RTForceBasedLayout new. 
	layout on: es edges: #().
	
	self assert: layout userDefinedEdges isEmpty.
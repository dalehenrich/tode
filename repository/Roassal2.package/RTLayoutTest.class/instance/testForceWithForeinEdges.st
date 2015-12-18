tests
testForceWithForeinEdges
	| v es layout edges |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 3).
	v addAll: (es copyFrom: 1 to: 3).
	edges :=
		RTEdge 
			buildEdgesFromObjects: (1 to: 3) 
			from: #yourself 
			toAll: [:value | Array with: value -1 with: value + 1 ] 
			inView: v.
	
	"We give to the layout node 1 and 2, and some edges that refer to 3"
	layout := RTForceBasedLayout new. 
	"No error should be raised"
	layout on: es allButLast edges: edges allButFirst.
	
tests
testBasic

	| v es |
	v := RTView new.
	es := (RTEllipse new + RTLabel) elementsOn: (1 to: 5).
	v addAll: es.
	RTCircleLayout on: es.

	es first @ (RTShowEdge new connectTo: [:vvvv| Array with: 2 ]).

	self assert: v numberOfEdges = 0.
	es first announce: TRMouseEnter.
	self assert: v numberOfEdges = 1.
	
	es first announce: TRMouseLeave.
	self assert: v numberOfEdges = 0.
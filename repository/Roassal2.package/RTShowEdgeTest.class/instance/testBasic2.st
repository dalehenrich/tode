tests
testBasic2

	| v es |
	v := RTView new.
	es := (RTEllipse new + RTLabel) elementsOn: (1 to: 5).
	v addAll: es.
	RTCircleLayout on: es.

	es @ (RTShowEdge new connectTo: [:vvvv| Array with: vvvv + 1 ]).

	self assert: v numberOfEdges = 0.
	es third announce: TRMouseEnter.
	self assert: v numberOfEdges = 1.
	
	es third announce: TRMouseLeave.
	self assert: v numberOfEdges = 0.
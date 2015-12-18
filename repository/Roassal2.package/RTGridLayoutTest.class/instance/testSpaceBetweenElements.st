tests
testSpaceBetweenElements

	| v es |
	v := RTView new.
	es := (RTBox new size: 5) elementsOn: (1 to: 4).
	v addAll: es.
	RTGridLayout new on: es.
	
	self assert: (es second position - es first position) = (10 @ 0).
	self assert: (es third position - es first position) = (0 @ 10).

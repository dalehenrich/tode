tests
testShapeAndElements

	| es |
	es := RTBox elementsOn: #(1 2 3 4).
	self assert: es first shape == es second shape
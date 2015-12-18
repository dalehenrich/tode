basic
testShapeAndBorderColor

	| elements |
	builder shape rectangle
		borderColor: Color gray;
		if: #odd borderColor: Color black.
		
	elements := builder nodes: #(1 2 3).
	builder build.
	
	self assert: elements size equals: 3.
	self assert: elements first trachelShape strokePaint equals: Color black.
	self assert: elements second trachelShape strokePaint equals: Color gray.
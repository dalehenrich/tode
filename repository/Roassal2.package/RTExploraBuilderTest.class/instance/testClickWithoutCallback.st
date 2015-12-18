tests
testClickWithoutCallback

	| node |
	node := builder node: 5.
	self assert: node element model = 5.
	builder renderIn: builder view.
	
	node element announce: TRMouseClick.
	self assert: builder view numberOfElements = 1
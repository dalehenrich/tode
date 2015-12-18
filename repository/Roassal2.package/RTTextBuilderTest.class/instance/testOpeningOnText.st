tests
testOpeningOnText
	builder addText: 'hello world'.
	self assert: builder view numberOfElements = 4.
	
	builder addText: 'hello world'.
	self assert: builder view numberOfElements = 8.
tests
testWithOneNode

	builder node: 5.
	builder renderIn: builder view.
	self assert: builder view numberOfElements = 1
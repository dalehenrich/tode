tests
testBasic

	builder models: (Array with: 10 with: 20 with: 30).
	self assert: builder view numberOfElements equals: 3.
	
	self assert: builder view elements anyOne shape class == RTArc.
basic
testNesting

	builder nodes: #(1 10) forEach: [ :v | builder nodes: (Array with: v + 1 with: v + 2) ].
	self assert: builder view numberOfElements = 6.
	self assert: builder topLevelNodes size = 2.
	self assert: (builder topLevelNodes collect: #model) asArray = #(1 10).
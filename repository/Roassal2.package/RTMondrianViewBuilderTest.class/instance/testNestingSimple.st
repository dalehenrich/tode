basic
testNestingSimple

	builder nodes: #(1) forEach: [ :v | builder nodes: #(2) ].
	self assert: builder view numberOfElements = 2.
	self assert: builder topLevelNodes size = 1
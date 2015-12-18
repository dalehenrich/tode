edges
testEdgesToAll

	builder shape rectangle.
	builder nodes: #(1 2 3).
	self assert: builder view edges size equals: 0.
	
	builder shape line.
	builder edgesToAll: #(2).
	self assert: builder view edges size equals: 2.
	(builder view edges collect: #to) do: [ :eachTarget |
		self assert: eachTarget model equals: 2 ].
	(builder view edges collect: #from) do: [ :eachSource |
		self deny: eachSource model = 2 ].
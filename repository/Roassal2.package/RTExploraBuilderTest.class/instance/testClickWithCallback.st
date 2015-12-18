tests
testClickWithCallback

	| node1 elem2 |
	node1 := builder node: 1.
	builder onClickExplore: [ :num | num*3 to: num*3 + 1 ].
	builder renderIn: builder view.
	
	node1 element announce: TRMouseClick.
	self assert: builder view numberOfElements = 3.
	
	elem2 := builder view elements at: 3.
	elem2 announce: TRMouseClick.
	self assert: builder view numberOfElements = 5.
	
	elem2 announce: TRMouseClick.
	self assert: builder view numberOfElements = 3.
	
	elem2 announce: TRMouseClick.
	self assert: builder view numberOfElements = 5.
	
	node1 element announce: TRMouseClick.
	self assert: builder view numberOfElements = 1.
tests
testNodeCantKillDaddy
	| node1 elem2 |
	node1 := builder node: 1.
	builder onLeftClickExplore: [ :n | #(2 3) ].
	builder onRightClickExplore: [ :n | #(1) ].
	builder renderIn: builder view.
	self assert: builder view numberOfElements = 1.
	
	node1 element announce: TRMouseLeftClick.
	elem2 := builder view elementFromModel: 2.
	self assert: builder view numberOfElements = 3.
	
	elem2 announce: TRMouseRightClick.
	self assert: builder view numberOfElements = 3.
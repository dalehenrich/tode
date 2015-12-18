tests
testIsExpandable
	| node1 node2 |
	node1 := builder node: 1.
	builder renderIn: builder view.
	self assert: node1 isExpandable not.
	
	builder onClickExplore: [ :n | n = 1 ifTrue: [ 2 to: 3 ] ifFalse: [ #() ]].
	node1 element announce: TRMouseClick.
	node2 := node1 expandedNodes at: 1.
	self assert: node1 isExpandable.
	self assert: node2 isExpandable not.
	
tests
testTwoWayExpansion

	| node1 node2 n1 n2 n3 n4 expandDown |
	
	" A tree structure "
	n1 := RTExploraTestTree new.
	n2 := RTExploraTestTree new.
	n3 := RTExploraTestTree new.
	n4 := RTExploraTestTree new.
	n1 left: n2; right: n3.
	n2 parent: n1; left: n4.
	n3 parent: n1.
	n4 parent: n2.
	
	expandDown := [ :n |
		|r|
		r := OrderedCollection new.
		n left isNil ifFalse: [ r add: n left ].
		n right isNil ifFalse: [ r add: n right ].
		r
	].
	
	node2 := builder node: n2.
	builder onLeftClickExplore: [ :n | expandDown value: n ].
	builder onRightClickExplore: [ :n | n parent isNil ifFalse: [ Array with: n parent ] ifTrue: [ #() ] ].
	builder renderIn: builder view.
	
	node2 element announce: TRMouseRightClick.
	node1 := builder view elementFromModel: n1.
	self assert: builder view numberOfElements = 2.
	
	node2 element announce: TRMouseLeftClick.
	self assert: builder view numberOfElements = 3.
	
	node1 announce: TRMouseLeftClick.
	self assert: builder view numberOfElements = 4.
	
	node2 element announce: TRMouseRightClick.
	self assert: builder view numberOfElements = 2.
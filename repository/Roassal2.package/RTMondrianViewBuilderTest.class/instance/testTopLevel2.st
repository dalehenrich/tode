basic
testTopLevel2
	builder nodes: (1 to: 5).
	builder nodes: (1 to: 5) forEach: [ :v | builder nodes: (Array with: v) ].
	builder nodes: (1 to: 5).
	
	self assert: builder topLevelNodes size = 15
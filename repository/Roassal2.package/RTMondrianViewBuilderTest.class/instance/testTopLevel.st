basic
testTopLevel
	builder nodes: (1 to: 5).
	builder nodes: (1 to: 5).
	self assert: builder topLevelNodes size = 10
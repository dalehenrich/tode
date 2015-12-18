basic
testTopLevelObjects

	builder nodes: (1 to: 5).
	self assert: builder topLevelObjects asArray = (1 to: 5) asArray
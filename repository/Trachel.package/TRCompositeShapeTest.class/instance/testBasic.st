tests
testBasic
	emptyShape addShape: TRLabelShape new.
	self assert: emptyShape numberOfShapes equals: 1.
	self assert: emptyShape element equals: nil
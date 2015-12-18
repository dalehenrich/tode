tests
testAddingShape
	emptyShape addShape: TRLabelShape new.
	self assert: emptyShape numberOfShapes equals: 1.
	self assert: multiShape numberOfShapes equals: 2.
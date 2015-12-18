tests
testElementFromModel
	| group |
	group := RTBox elementsOn: (1 to: 5).
	self assert: (group elementFromModel: 1) == group first.
	self assert: (group elementFromModel: 5) == group last.

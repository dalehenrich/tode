tests
testView
	| group |
	group := RTBox elementsOn: (1 to: 5).
	self assert: group view equals: group first view
tests
testGroup
	| group |
	group := RTBox elementsOn: (1 to: 5).
	self assert: group class == RTGroup.	
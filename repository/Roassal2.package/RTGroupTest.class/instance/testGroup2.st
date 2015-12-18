tests
testGroup2
	| group |
	group := RTBox new elementsOn: (1 to: 5).
	self assert: group class == RTGroup.	
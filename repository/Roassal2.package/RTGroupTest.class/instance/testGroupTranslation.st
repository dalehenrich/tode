tests
testGroupTranslation
	| group |
	group := RTBox elementsOn: (1 to: 5).
	self assert: group class == RTGroup.	
	self assert: (group allSatisfy: [ :el | el position = (0 @ 0) ]).
	group translateBy: 20 @ 30.
	self assert: (group allSatisfy: [ :el | el position = (20 @ 30) ]).
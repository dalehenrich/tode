tests
testBarPositionWithoutAnimation

	| b e5 e4 |
	b := RTDynamicStackedGrapher new.
	b doNotUseAnimation.
	b maxY: 10.
	b add: 5.
	b add: 4.
	b build.
	
	e5 := b view elementFromModel: 5.
	e4 := b view elementFromModel: 4.
	self assert: e5 position equals: (75.0@ -50).
	self assert: e4 position equals: (150.0@ -40).
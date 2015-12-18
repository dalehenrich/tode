tests
testViewWhenAddedToView
	| group v |
	group := RTBox elementsOn: (1 to: 5).	
	v := RTView new.
	v addAll: group.
	self assert: group view equals: group first view
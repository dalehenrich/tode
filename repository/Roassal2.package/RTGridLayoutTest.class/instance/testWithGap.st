tests
testWithGap

	| layout |
	layout := RTGridLayout withGap: 5.
	self assert: layout class equals: RTGridLayout.
	self assert: layout gapSize equals: 5
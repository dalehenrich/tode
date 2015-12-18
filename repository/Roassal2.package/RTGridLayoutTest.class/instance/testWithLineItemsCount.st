tests
testWithLineItemsCount
	| layout |
	layout := RTGridLayout withLineItemsCount: 5.
	self assert: layout lineItemsCountBlock notNil.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 10)) equals: 5.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 2)) equals: 5.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 100)) equals: 5.
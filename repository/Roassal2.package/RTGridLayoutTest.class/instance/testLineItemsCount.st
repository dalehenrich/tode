tests
testLineItemsCount
	| layout |
	layout := RTGridLayout new.
	self assert: layout lineItemsCountBlock notNil.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 10)) equals: 4.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 2)) equals: 2.
	self assert: (layout lineItemsCountBlock rtValue: (1 to: 100)) equals: 13.
tests
testDefault

	| ds |
	ds := RTStackedDataSet new.
	self assert: ds numberOfPoints equals: 0
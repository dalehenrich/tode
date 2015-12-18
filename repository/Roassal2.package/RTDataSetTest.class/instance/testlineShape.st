tests
testlineShape

	| ds |
	ds := RTDataSet new.
	self assert: ds lineShape class equals: RTShapeBuilder
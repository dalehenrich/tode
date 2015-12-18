tests
testMaxValueInScript01

	| b ds axeConfig |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds points: #(1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.
	axeConfig := b axisX.
	b build.
	

	self assert: axeConfig maxValue equals: 3
tests
testBasicVerticalWithNumberOfTicks

	| b ds d |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds points: #(3 4 6 -2).
	b add: ds.

	d := RTVerticalTickLineDecorator new.
	d numberOfTicks: 10.
	b addDecorator: d.

	b build.
	
	self assert: b axisX numberOfTicks equals: 4.
	self assert: b axisX step equals: 6 + 2 / 4.
	self assert: d step equals: 6 + 2 / 10.
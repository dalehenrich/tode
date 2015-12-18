tests
testIsAxisDefined

	b := RTGrapher new.
	b add: (RTDataSet new points: #(1 2 3)).
	
	self deny: b isXAxisDefined.
	self deny: b isYAxisDefined.
	
	b axisXWithNumberOfTicks: 2.
	self assert: b isXAxisDefined.
	self deny: b isYAxisDefined.

	b axisY.
	self assert: b isXAxisDefined.
	self assert: b isYAxisDefined.

	b build.
	self assert: b getAxisX step equals: 3.
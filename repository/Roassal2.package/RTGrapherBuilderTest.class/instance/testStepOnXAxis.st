tests
testStepOnXAxis

	b := RTGrapher new.
	b add: (RTDataSet new points: #(1 2 3)).
	b axisXWithNumberOfTicks: 2.
	b build.
	self assert: b getAxisX step equals: 3.
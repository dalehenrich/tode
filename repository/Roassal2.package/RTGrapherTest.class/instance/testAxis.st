tests
testAxis

	| x1 x2 ds |
	b := RTGrapher new.
	ds := RTDataSet new.
	ds points: #(1 2).
	b add: ds.
	
	x1 := b axisX numberOfTicks: 4.
	x2 := b axisX numberOfLabels: 5.
	
	self assert: x1 == x2.
	self assert: x1 numberOfTicks equals: 5.
	self assert: x1 numberOfLabels equals: 5.
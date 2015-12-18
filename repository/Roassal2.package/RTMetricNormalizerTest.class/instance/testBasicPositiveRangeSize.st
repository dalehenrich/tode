test size
testBasicPositiveRangeSize
	
	| es |
	es := RTEllipse new elementsOn: (Array with: 0 with: 25 with: 50).

	RTMetricNormalizer new
			elements: es;
			normalizeSize: #yourself min: 0 max: 200.
	self assert: (es collect: [ :e | e extent x ]) asArray equals: (Array with: 0 with: 100 with: 200)
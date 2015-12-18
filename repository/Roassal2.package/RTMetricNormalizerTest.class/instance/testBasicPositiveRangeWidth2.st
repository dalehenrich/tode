test size
testBasicPositiveRangeWidth2
	
	| es |
	es := RTEllipse new elementsOn: (Array with: 25 with: 50).

	RTMetricNormalizer new
			elements: es;
			normalizeWidth: #yourself min: 0 max: 200 minValue: 0.
	self assert: (es collect: [ :e | e extent x ]) asArray equals: (Array with: 100 with: 200)
test x
testBasicPositiveRangeX2
	
	| es |
	es := RTEllipse new elementsOn: (Array with: 25 with: 50).

	RTMetricNormalizer new
			elements: es;
			normalizeX: #yourself min: 0 max: 200 minValue: 0 maxValue: 50.
	self assert: (es collect: #position) asArray equals: (Array with: 100 @ 0 with: 200 @ 0)
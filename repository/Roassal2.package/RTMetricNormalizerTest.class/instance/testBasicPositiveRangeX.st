test x
testBasicPositiveRangeX
	
	| es |
	es := RTEllipse new elementsOn: (Array with: 0 with: 25 with: 50).

	RTMetricNormalizer new
			elements: es;
			normalizeX: #yourself min: 0 max: 200.
	self assert: (es collect: #position) asArray equals: (Array with: 0 @ 0 with: 100 @ 0 with: 200 @ 0)
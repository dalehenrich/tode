test y
testBasicNegativeRange
	
	| es |
	es := RTEllipse new elementsOn: (Array with: 0 @ 0 with: 50 @ 25 with: 100 @ 50).

	RTMetricNormalizer new
			elements: es;
			normalizeY: #y min: -200 max: 200.
	self assert: (es collect: #position) asArray equals: (Array with: 0 @ -200 with: 0 @ 0 with: 0 @ 200)
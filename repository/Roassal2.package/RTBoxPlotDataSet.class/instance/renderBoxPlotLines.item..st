hooks
renderBoxPlotLines: view item: item
	|e1 e2 e3 e4 e5 b normalizer mx |
	b := boxLineShape.
	b height: 0.5; width: boxWidth.
	mx := x rtValue: model.
	e1 := b elementOn: item maxRegularValue.
	e2 := b elementOn: item median.
	e3 := b elementOn: item minRegularValue.
	view add: e1; add: e2; add: e3.
	b width: 0.5.
	e4 := b elementOn: item.
	e5 := b elementOn: item.
	view add: e4; add: e5.
	
	normalizer := RTMetricNormalizer new.
	normalizer elements: (Array with: e1 with: e2 with: e3 with: e4 with: e5).
	normalizer normalizeX: [ :m | mx ]
		min: 0
		max: builder extent x
		minValue: minX
		maxValue: maxX.
		
	normalizer elements: (Array with: e1 with: e2 with: e3);
		normalizeY: #yourself
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY.
		
	
	normalizer elements: (Array with: e4);
		normalizeY: [ :i | i maxRegularValue - ((i maxRegularValue - i q3)/2) ]
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY;
		normalizeHeight: [ :i | (i maxRegularValue - i q3) negated ]
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY.
		
	normalizer elements: (Array with: e5);
		normalizeY: [ :i | i q1 - ((i q1 - i minRegularValue )/2) ]
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY;
		normalizeHeight: [ :i | i minRegularValue - i q1 ]
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY.
	
	
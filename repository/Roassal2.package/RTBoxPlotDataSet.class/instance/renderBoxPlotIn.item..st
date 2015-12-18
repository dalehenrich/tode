hooks
renderBoxPlotIn: view item: item
	| box normalizer e mx |
	mx := x rtValue: model.
	boxShape width: boxWidth.
	box := boxShape elementOn: item.
	view add: box.
	normalizer := RTMetricNormalizer new.
	normalizer elements: (Array with: box);
		normalizeX: [:m | mx ]
			min: 0
			max: builder extent x
			minValue: minX
			maxValue: maxX;
		normalizeY: [:m | m q3 + (m iqr negated / 2) ]
			min: 0
			max: builder extent y negated
			minValue: minY
			maxValue: maxY;
		normalizeHeight: [ :m | m iqr negated ]
			min: 0
			max: builder extent y negated
			minValue: minY
			maxValue: maxY.
	
	showMean ifFalse: [ ^ self ].
	e := meanShape elementOn: item.
	view add: e.
	
	normalizer elements: (Array with: e );
		normalizeX: [ :i | mx ]
		min: 0
		max: builder extent x
		minValue: minX
		maxValue: maxX;
		normalizeY: [ :i | i mean ]
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY

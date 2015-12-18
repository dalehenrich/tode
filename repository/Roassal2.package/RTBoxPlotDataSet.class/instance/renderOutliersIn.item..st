hooks
renderOutliersIn: view item: item
	| mx elements normalizer |
	mx := x rtValue: model.
	normalizer := RTMetricNormalizer new.
	elements := outlierShape elementsOn: item outliers.
	view add: elements.
	normalizer elements: elements;
		normalizeX: [ :i | mx ]
		min: 0
		max: builder extent x
		minValue: minX
		maxValue: maxX;
		normalizeY: #yourself
		min: 0
		max: builder extent y negated
		minValue: minY
		maxValue: maxY
		 
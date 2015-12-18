public - effects
dotSize: metricAsBlockOrSymbol min: minValue max: maxValue using: transformation
	"Set the size of the dots for each element"
	elementActions add: [ :elements |
		RTMetricNormalizer new
			elements: elements;
			normalizeSize: metricAsBlockOrSymbol min: minValue max: maxValue using: transformation ]
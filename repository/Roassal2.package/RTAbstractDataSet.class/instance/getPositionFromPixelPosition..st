hooks
getPositionFromPixelPosition: aPoint
	"Return the position in the graph from a position in the Roassal view of a point"

	| anX anY |
	anX := RTMetricNormalizer new
		getValue: aPoint x min: minX max: maxX minValue: 0 maxValue: builder extent x.
	anY := RTMetricNormalizer new
		getValue: aPoint y min: minY max: maxY minValue: 0 maxValue: builder extent y.
			
	^ anX @ anY negated
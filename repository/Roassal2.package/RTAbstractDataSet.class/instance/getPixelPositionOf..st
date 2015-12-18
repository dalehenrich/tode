hooks
getPixelPositionOf: aPoint
	"Return the position in the Roassal view of a point"

	| anX anY |
	anX := RTMetricNormalizer new
		getValue: aPoint x min: 0 max: builder extent x minValue: minX maxValue: maxX.
	anY := RTMetricNormalizer new
		getValue: aPoint y min: 0 max: builder extent y negated minValue: minY maxValue: maxY.
			
	^ anX @ anY
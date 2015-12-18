accessing
minValue: aMinValue
	"Do not use this to set the maximum. Instead, use RTGrapher>>maxX:, minX:, maxY:, minY:"
	minValueManuallySet := true.
	self privateMinValue: aMinValue
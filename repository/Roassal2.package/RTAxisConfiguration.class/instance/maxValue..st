accessing
maxValue: aMaxValue
	"Do not use this to set the maximum. Instead, use RTGrapher>>maxX:, minX:, maxY:, minY:"
	maxValueManuallySet := true.
	self privateMaxValue: aMaxValue
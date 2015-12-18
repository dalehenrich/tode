private-axis
axisYFrom: aPoint to: anotherPoint
	"Draw the axis from aPoint to anotherPoint"
	axisConfigurationY fromPoint: aPoint.
	axisConfigurationY toPoint: anotherPoint.
	axisConfigurationY maxValue: self maxY.
	axisConfigurationY minValue: self minY.
	axisConfigurationY axisFrom: aPoint to: anotherPoint

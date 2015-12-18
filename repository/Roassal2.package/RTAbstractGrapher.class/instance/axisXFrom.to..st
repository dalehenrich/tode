private-axis
axisXFrom: aPoint to: anotherPoint
	"Draw the axis from aPoint to anotherPoint"
	axisConfigurationX fromPoint: aPoint.
	axisConfigurationX toPoint: anotherPoint.
	axisConfigurationX hasMaxValueBeenManuallySet
		ifFalse: [ axisConfigurationX maxValue: self maxX ].
	axisConfigurationX hasMinValueBeenManuallySet 
		ifFalse: [ axisConfigurationX minValue: self minX ].
	axisConfigurationX axisFrom: aPoint to: anotherPoint

public-axis
axisX
	axisConfigurationX ifNil: [
		axisConfigurationX := self createAxisConfiguration ].
	axisConfigurationX
		tickLabelOffset: 0 @ 15.
	^ axisConfigurationX
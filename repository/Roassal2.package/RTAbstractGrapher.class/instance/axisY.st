public-axis
axisY
	axisConfigurationY ifNil: [
		axisConfigurationY := self createAxisConfiguration ].
	axisConfigurationY
		tickLabelOffset: -30 @ 0.
	^ axisConfigurationY
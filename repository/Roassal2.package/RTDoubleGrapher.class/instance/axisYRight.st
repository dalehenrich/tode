as yet unclassified
axisYRight
	axisConfigurationYRight ifNil: [
		axisConfigurationYRight := self createAxisConfiguration ].
	axisConfigurationYRight
		tickLabelOffset: 30 @ 0.

	^ axisConfigurationYRight
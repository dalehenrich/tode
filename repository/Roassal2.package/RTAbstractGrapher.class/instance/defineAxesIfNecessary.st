utility
defineAxesIfNecessary
	
	self isXAxisDefined ifFalse: [ self axisX ].
	self isYAxisDefined ifFalse: [ self axisY ].
	
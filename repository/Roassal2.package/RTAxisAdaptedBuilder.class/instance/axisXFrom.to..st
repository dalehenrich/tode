private-axis
axisXFrom: anOriginPoint to: aPoint
	| config |
	(self xAxisConfiguration fromPoint) ifNil: [ self xAxisDefaultConfigurationOrigin: anOriginPoint toPoint: aPoint].
	
	config := self xAxisConfiguration.
	RTAxisRenderer new builder: self; config: config; axisFrom: anOriginPoint to: aPoint.
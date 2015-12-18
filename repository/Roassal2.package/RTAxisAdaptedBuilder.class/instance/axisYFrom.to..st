private-axis
axisYFrom: anOriginPoint to: aPoint
	| config |
	(self yAxisConfiguration fromPoint) ifNil: [ self yAxisDefaultConfigurationOrigin: anOriginPoint toPoint: aPoint].
	
	config := self yAxisConfiguration.
	RTAxisRenderer new builder: self; config: config; axisFrom: anOriginPoint to: aPoint.
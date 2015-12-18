as yet unclassified
yAxisDefaultConfigurationOrigin: aPoint toPoint: anotherPoint
	yAxisConfiguration fromPoint: aPoint.
	yAxisConfiguration toPoint: anotherPoint.
	yAxisConfiguration maxValue: anotherPoint y.
	yAxisConfiguration minValue: aPoint y.
	
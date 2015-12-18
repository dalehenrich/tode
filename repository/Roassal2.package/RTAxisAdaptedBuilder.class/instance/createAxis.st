as yet unclassified
createAxis
	| origin xAxisPoint yAxisPoint |
		
	origin := self axisOrigin.
	xAxisPoint := self xAxisPoint: (origin y).
	yAxisPoint := self yAxisPoint: (origin x).

	self axisXFrom: origin to: xAxisPoint.
	self axisYFrom: origin to: yAxisPoint.
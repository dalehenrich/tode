drawing-hooks
render
	| values average from to |
	values := self datasetValuesX.
	average := values average.
	from := builder getPixelPositionOf: average @ builder minY.
	to := builder getPixelPositionOf: average @ builder maxY.
	self lineFrom: from to: to.
	
	shouldHaveLabel ifTrue: [ 
		self label: ((labelConvertion rtValue: average) asString) above: to.
	]
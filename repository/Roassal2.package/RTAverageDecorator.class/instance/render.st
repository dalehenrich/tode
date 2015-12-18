drawing-hooks
render
	| values average from to |
	values := self datasetValues.
	average := values average.
	from := builder getPixelPositionOf: builder minX @ average.
	to := builder getPixelPositionOf: builder maxX @ average.
	self lineFrom: from to: to.
	
	shouldHaveLabel ifTrue: [ 
		self label: ((labelConvertion rtValue: average) asString) above: to.
	]
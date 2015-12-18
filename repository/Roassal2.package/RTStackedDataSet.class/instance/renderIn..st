hooks
renderIn: aView

	"This is a bit ugly. Maybe having a class hierarchy would be better"
	self adjustMinAndMaxValues.
	shouldHaveHistogramBars 
		ifTrue: [ self renderBarChartIn: aView ]
		ifFalse: [ self renderDotAndLinesIn: aView ]
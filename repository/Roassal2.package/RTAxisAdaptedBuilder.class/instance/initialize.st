initialization
initialize
	super initialize.
	self configureView: view.
	self defaultMargin.
	xAxisConfiguration := self createAxisConfiguration.
	xAxisConfiguration numberOfTicks: 4.
	xAxisConfiguration tickLabelOffset: 0 @ -20.
	yAxisConfiguration := self createAxisConfiguration.
	yAxisConfiguration numberOfTicks: 4.
	yAxisConfiguration tickLabelOffset: -30 @ 0.
	objects := OrderedCollection new.
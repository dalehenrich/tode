hooks
addedInBuilder: aBuilder
	"Really ugly method. This will be fixed soon!"
	super addedInBuilder: aBuilder.

	self points: ((RTDistribution on: (points collect: y)) annotatedFrequency).
	self y: #first.
	
	builder addDecorator: (RTVerticalValuesDecorator new addAll: (0 to: (points collect: #first) max)).
	builder axisY noTick; noLabel.
	builder axisX noLabel; noTick
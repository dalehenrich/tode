sources
exampleAverageAndStdev

	| b ds |
	b := RTGrapher new.

	ds := RTStackedDataSet new.
	ds interaction popup.
	ds points: #(600 470 170 430 300).
	ds barShape width: 20; color: Color lightGreen.
	b add: ds.

	b axisX noLabel; noTick.
	b axisY noDecimal.

	b addDecorator: RTMeanDevVarDecorator new.
	b build.
	^ b view

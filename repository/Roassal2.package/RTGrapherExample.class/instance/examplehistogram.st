sources
examplehistogram

	| grapher dataSet |
	grapher := RTGrapher new.
	grapher extent: 300 @ 200.
	
	dataSet := RTStackedDataSet new 
		points: RTShape withAllSubclasses; 
		y: #numberOfMethods.
	dataSet barShape width: 10.
	grapher add: dataSet.

	dataSet := RTStackedDataSet new 
		points: RTShape withAllSubclasses; 
		y: #numberOfMethods.
	dataSet dotShape color: (Color red alpha: 0.3).
	grapher add: dataSet.

	grapher axisY.
	grapher axisX noLabel.
	grapher build.

	^ grapher view
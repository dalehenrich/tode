tests
testNonTrivialGraph

	| grapher dataSet |
	grapher := RTGrapher new.
	grapher extent: 300 @ 200.
	dataSet := RTDataSet new 
		points: RTObject withAllSubclasses; 
		x: #numberOfLinesOfCode; 
		y: #numberOfMethods.
	dataSet dotShape color: (Color red alpha: 0.3).
	grapher add: dataSet.
	grapher axisX; axisY.
	grapher build
	
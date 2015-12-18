sources
exampleColored2
	| b |
	b := RTKiviatBuilder new.
	"shapes: takes in argument a collection of colors, at least of the size of the numbers of objects"
	b shapes: ((ColorPalette qualitative colors: 12 scheme:'Paired') do: [:c | c alpha: 0.3]).
	b objects: RTAbstractCircleLayout withAllSubclasses.
	b addMetric: #numberOfLinesOfCode.
	b addMetric: #numberOfMethods.
	b addMetric: #numberOfVariables.
	
	b activateAxisTitle.
	
	b build.
	^ b view
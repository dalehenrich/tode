sources
exampleColored
	| b n |
	b := RTKiviatBuilder new.
	b objects: RTAbstractCircleLayout withAllSubclasses.
	
	n := RTMultiLinearColorForIdentity new objects: (b objects).
	b shape circle color: [ :value | n rtValue: value kiviatNode named]; size: 10.

	b addMetric: #numberOfLinesOfCode.
	b addMetric: #numberOfMethods.
	b addMetric: #numberOfVariables.
	b build.
	^ b 
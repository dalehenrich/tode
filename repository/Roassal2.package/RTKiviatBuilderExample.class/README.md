RTKiviatBuilderExample new installTitle: 'Colored3' 
		code:
		'
	| b myKiviatNodesElems m col |
	b := RTKiviatBuilder new.
	b objects: RTAbstractCircleLayout withAllSubclasses.
	b addMetric: #numberOfLinesOfCode.
	b addMetric: #numberOfMethods.
	b addMetric: #numberOfVariables.
	b open.
	myKiviatNodesElems := (b view elements select: [ :e | (e model isKindOf: RTKiviatElement)]).
	b objects do: [:o | m:= myKiviatNodesElems select: [ :e | (e model named name= o name)]. col := 	(Color random alpha: 0.6). m do: [:e | e color: col]].
	b build.
	b '
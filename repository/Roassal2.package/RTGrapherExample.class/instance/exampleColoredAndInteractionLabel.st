sources
exampleColoredAndInteractionLabel

	| b |
	b := RTDoubleBarBuilder new.
	b interaction action: #inspect.
	b shape label 
		text: [ :cls | '<', cls name, '>' ];
		if: [ :cls | cls name endsWith: 'Shape' ] fillColor: Color green;
		if: [ :cls | cls name endsWith: 'Box' ] fillColor: Color red.
	
	b points: RTShape withAllSubclasses.
	b bottomValue: #numberOfMethods.
	b topValue: #numberOfVariables.
b build.
^ b view
sources
exampleClasses

	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle 
				withBorder;
				width: #numberOfVariables;
				height: #numberOfMethods;
				fillColor: Color white.
	b nodes: RTObject withAllSubclasses.
	b gridLayout.
	b build.
	^ b view
examples
exportExampleColoredAndInteractionLabel
	| e view|
	e := RTHTML5Exporter new.
	view := RTGrapherExample new perform: #exampleColoredAndInteractionLabel.
	
	e export: view.
examples
exportExampleLabels
	| e view|
	e := RTHTML5Exporter new.
	view := RTRoassalExample new perform: #exampleLabels.
	
	e export: view.
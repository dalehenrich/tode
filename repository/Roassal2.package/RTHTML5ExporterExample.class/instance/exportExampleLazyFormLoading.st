examples
exportExampleLazyFormLoading
	| e view|
	e := RTHTML5Exporter new.
	view := RTRoassalExample new perform: #exampleLazyFormLoading.
	
	e export: view.
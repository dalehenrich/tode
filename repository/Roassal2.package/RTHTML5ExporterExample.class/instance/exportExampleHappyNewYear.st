examples
exportExampleHappyNewYear
	| e view|
	e := RTHTML5Exporter new.
	view := RTAnimationExample new perform: #exampleHappy2014.
	
	e export: view.
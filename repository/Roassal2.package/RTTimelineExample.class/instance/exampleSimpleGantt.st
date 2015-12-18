sources
exampleSimpleGantt

	| data b s d |
	data := #(#(WP1 0 5) #(WP2 5 8) #(WP3 7 10)).

	b := RTTimeline new.
	
	s := RTTimelineSet new.
	s objects: data.
	s lineIdentifier: #first.
	s start: #second.
	s end: #third.
	b add: s.
	
	b axisX 
		numberOfLabels: 5;
		labelRotation: -45;
		labelConversion: [ :v | Date year: 2015 day: v ]. 

	d := RTVerticalTickLineDecorator new.
	d shape line color: Color white.
	b addDecorator: d.
	
b build.
^ b view
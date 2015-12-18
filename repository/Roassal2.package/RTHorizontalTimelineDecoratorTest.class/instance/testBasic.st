tests
testBasic



	| data b s p |
	data := #(#(c1 0 5) #(c1 6 8) #(c2 0 5) #(c2 8 10) #(c3 0 10) #(c4 5 10) #(c5 5 8)).

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

	p := RTHorizontalTimelineDecorator new.
	p addLineAboveIdentifier: 'c3'.
	p addLineAboveIdentifier: 'c2'.
	p shape line width: 5; color: (Color red alpha: 0.3).
	b addDecorator: p.

	b build.
	
	self assert: b view edges last from position equals: 0 @ -80.
	self assert: b view edges last to position equals: 300 @ -80.
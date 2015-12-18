tests
testBasic

	| n s e |
	n := RTMultiLinearColorForIdentity new 
				command: #first; 
				objects: #(#c1 #c2 #c3 #c4 #c5);
				yourself.
	s := RTBox new color: n.
	e := s elementsOn: #(#(c1) #(c2) #(c3) #(c4) #(c5)).
	RTView new add: e.
	
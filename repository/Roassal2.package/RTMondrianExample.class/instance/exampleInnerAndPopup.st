sources
exampleInnerAndPopup
	| b |
	b := RTMondrian new.
	b shape rectangle withTextAbove.
	b nodes: RTShape withAllSubclasses forEach: [:cls | 
		b shape rectangle color: Color red; size: #numberOfLinesOfCode.
		b nodes: cls rtmethods. b layout grid ].
	b layout flow.
	b build.
	^ b view
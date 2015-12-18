sources
exampleNestingAndTitle

	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle withTextAbove.
	b nodes: RTShape withAllSubclasses forEach: [:cls | 
		b shape rectangle color: Color white; size: #numberOfLinesOfCode.
		b nodes: cls rtmethods. b gridLayout ].
	b flowLayout.
	^ b build
initialization
initialize
	super initialize.
	text := #model.
	self top.
	color := Color gray.
	lowColor := Color veryVeryLightGray.
	
	highlightable := false. 
	offsetOnEdge := 0.5.

	fontSize := TRLabelShape defaultFontSize.

	canvas := [ :el | 
		el view ifNil: [ self error: 'You are trying to use RTLabelled on an element before adding the element to the view. Two solutions: (i) specify the view to the RTLabelled (using #view:) or (ii) use RTLabelled after having added the element' ].
		el view canvas ]
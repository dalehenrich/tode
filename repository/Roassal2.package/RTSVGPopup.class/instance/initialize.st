initialization
initialize
	super initialize.
	click := false.
	color := Color black.
	contained := false.
	external := true.
	self type: 'popup'.
	position := [ :element | element trachelShape position ].
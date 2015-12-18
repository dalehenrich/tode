initialization
initialize
	super initialize.
	self path: ''.
	scale := 1.
	borderWidth := 1.
	borderColor := Color black.
	self fillColor: nil.
	keepInOriginalPosition := true.
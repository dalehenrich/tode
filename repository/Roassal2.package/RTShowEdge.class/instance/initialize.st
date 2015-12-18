initialize
initialize
	super initialize.
	connectToElements := [ :el | Array with: el ].
	self shape: RTLine
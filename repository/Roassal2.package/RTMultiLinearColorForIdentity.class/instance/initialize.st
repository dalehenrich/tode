initialization
initialize
	super initialize.
	self colors: (ColorPalette qualitative colors: 12 scheme: 'Set3').
	objects := #()
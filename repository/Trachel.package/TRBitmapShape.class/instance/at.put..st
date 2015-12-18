accessing
at: aPosition put: aColor
	self form getCanvas fillRectangle: (aPosition extent: 1 @ 1) color: aColor
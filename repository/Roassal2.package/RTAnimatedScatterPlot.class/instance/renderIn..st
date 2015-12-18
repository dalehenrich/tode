UI
renderIn: aView
	self setScale.
	self setAndCreateElements.
	self drawAxis.
	self setButtons.
	self setViewTitle.
	self renderCurrentFrame
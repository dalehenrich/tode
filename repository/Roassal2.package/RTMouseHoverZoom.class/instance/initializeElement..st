hooks
initializeElement: element
	element when: TRMouseEnter do: [ :anEvent |
		self doZoomEffect: element ].
	
	element when: TRMouseLeave do: [ :anEvent |
		self undoZoomEffect: element ]
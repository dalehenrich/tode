lastPopup
removeLastPopup
	lastPopup ifNil: [ ^ self ].
	lastPopup view
		ifNil: [ 
			self resetLastPopup.
			^ self ].
	lastPopup remove.
	self resetLastPopup.
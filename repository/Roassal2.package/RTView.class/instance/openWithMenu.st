opening
openWithMenu
	self canvas addMenu: 'In' callback: [ RTZoomInMove on: self ].
	self canvas addMenu: 'Out' callback: [ RTZoomOutMove on: self ].

	^ self open
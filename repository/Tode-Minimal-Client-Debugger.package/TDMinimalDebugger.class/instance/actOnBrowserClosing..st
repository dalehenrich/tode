callbacks
actOnBrowserClosing: ann
	self resuming
		ifFalse: [ 	self terminate ]
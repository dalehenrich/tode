callbacks
actOnBrowserClosing: ann
	self resuming
		ifFalse: [ 	clientProcess terminate ]
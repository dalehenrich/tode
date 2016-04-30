callbacks
actOnBrowserClosing: ann
	self resuming
		ifFalse: [ self session logout ]
typing support
initializeCmdMaps
	localCmdMap ~~ nil
		ifTrue: [ ^ self ].
	self model buildCmdActionMapFor: self
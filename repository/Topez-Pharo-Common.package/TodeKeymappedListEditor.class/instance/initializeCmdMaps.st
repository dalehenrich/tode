typing support
initializeCmdMaps
	localCmdMap ~~ nil
		ifTrue: [ ^ self ].
	self bindBasicCmdKeyShortcuts.
	self buildCmdActionMapFor: self
typing support
localCmdMap
	localCmdMap ifNil: [ localCmdMap := self defaultCmdMap ].
	^ localCmdMap
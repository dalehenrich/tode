typing support
localShiftCmdMap
	localShiftCmdMap ifNil: [ localShiftCmdMap := self defaultCmdMap ].
	^ localShiftCmdMap
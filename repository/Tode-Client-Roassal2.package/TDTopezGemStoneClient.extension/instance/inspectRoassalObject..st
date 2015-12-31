*tode-client-roassal2
inspectRoassalObject: aTDPPINode
	| oopType |
	oopType := self session
		rawReceiverNB: (self session asOopType: aTDPPINode myOop)
		perform: #inspectRoassalObject
		withArgs: #().
	^ self session library localFor: oopType
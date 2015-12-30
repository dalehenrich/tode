*tode-client-roassal2
getChildrenForClientRoassalElement: aClientRoassalElement node: aTDPPINode
	| oopType stonString |
	oopType := self session
		rawReceiverNB: aClientRoassalElement childrenBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientRoassalElement clientElementOopType).
			aClientRoassalElement session asOopType: aTDPPINode myOop}.
	stonString := self session library localFor: oopType.
	^ (self objectSerializer fromString: stonString) do: [ :each | each clientElement: aClientRoassalElement ]
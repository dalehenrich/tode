*tode-client-roassal2
getParentsForClientRoassalElement: aClientRoassalElement node: aTDPPINode
	| oopType stonString |
	oopType := self session
		rawReceiverNB: aClientRoassalElement parentsBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientRoassalElement clientElementOopType).
			(aClientRoassalElement session asOopType: aTDPPINode myOop)}.
	stonString := self session library localFor: oopType.
	^ (self objectSerializer fromString: stonString) do: [ :each | each clientElement: aClientRoassalElement ]
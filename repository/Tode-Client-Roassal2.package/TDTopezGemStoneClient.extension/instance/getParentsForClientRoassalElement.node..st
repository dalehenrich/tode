*tode-client-roassal2
getParentsForClientRoassalElement: aClientListElement node: aTDPPINode
	| oopType stonString |
	oopType := self session
		rawReceiverNB: aClientListElement parentsBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientListElement clientElementOopType).
			(aClientListElement session asOopType: aTDPPINode oop)}.
	stonString := self session library localFor: oopType.
	^ self objectSerializer fromString: stonString
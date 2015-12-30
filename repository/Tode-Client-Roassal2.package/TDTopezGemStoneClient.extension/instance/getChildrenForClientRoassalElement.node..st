*tode-client-roassal2
getChildrenForClientRoassalElement: aClientListElement node: aTDPPINode
	| oopType stonString |
	oopType := self session
		rawReceiverNB: aClientListElement childrenBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientListElement clientElementOopType).
			(aClientListElement session asOopType: aTDPPINode oop)}.
	stonString := self session library localFor: oopType.
	^ self objectSerializer fromString: stonString
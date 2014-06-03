as yet unclassified
setSourceForClientSourceElement: aClientSourceElement source: aString
	| oopType |
	oopType := self session
		rawReceiverNB: aClientSourceElement setBlockOopType
		perform: #value:value:
		withArgs:
			{(aString asString).
			(aClientSourceElement clientElementOopType)}.
	^ self session library localFor: oopType
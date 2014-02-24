as yet unclassified
executeMenuActionForClientSourceElement: aClientElement action: aSymbolOrStringOrSpecial selectedText: aString
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:
		withArgs:
			{aSymbolOrStringOrSpecial.
			(aClientElement clientElementOopType).
			aString}.
	^ self session library localFor: oopType
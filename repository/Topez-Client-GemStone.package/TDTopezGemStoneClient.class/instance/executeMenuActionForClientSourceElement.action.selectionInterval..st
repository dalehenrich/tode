as yet unclassified
executeMenuActionForClientSourceElement: aClientElement action: aSymbolOrStringOrSpecial selectionInterval: selectionInterval
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:
		withArgs:
			{aSymbolOrStringOrSpecial.
			(aClientElement clientElementOopType).
			selectionInterval}.
	^ self session library localFor: oopType
as yet unclassified
executeMenuActionForClientListElement: aClientElement action: aSymbolOrStringOrSpecial selectionIndex: selectionIndex
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:
		withArgs:
			{aSymbolOrStringOrSpecial.
			(aClientElement clientElementOopType).
			selectionIndex}.
	^ self session library localFor: oopType
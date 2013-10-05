as yet unclassified
executeMenuActionForClientListElement: aClientElement action: aSymbol selectionIndex: selectionIndex
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:
		withArgs:
			{(aSymbol asString).
			(aClientElement clientElementOopType).
			selectionIndex}.
	^ self session library localFor: oopType
as yet unclassified
executeMenuActionForClientListElement: aClientElement action: aSymbol selectionIndex: selectionIndex
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:
		withArgs:
			{(aSymbol asSymbol).
			(aClientElement clientElementOopType).
			selectionIndex}.
	^ self session library localFor: oopType
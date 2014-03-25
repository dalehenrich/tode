as yet unclassified
executeMenuActionForClientSourceElement: aClientElement action: aSymbolOrStringOrSpecial selectionInterval: selectionInterval dirty: dirty
	| oopType |
	oopType := self session
		rawReceiverNB: aClientElement menuActionBlockOopType
		perform: #value:value:value:value:value:
		withArgs:
			{aSymbolOrStringOrSpecial.
			(aClientElement clientElementOopType).
			(selectionInterval first).
			(selectionInterval last).
			dirty}.
	^ self session library localFor: oopType
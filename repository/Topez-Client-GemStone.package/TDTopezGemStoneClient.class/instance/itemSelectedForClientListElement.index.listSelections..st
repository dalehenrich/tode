as yet unclassified
itemSelectedForClientListElement: aClientListElement index: index listSelections: listSelectionsDictionary
	| oopType |
	oopType := self session
		rawReceiverNB: aClientListElement itemSelectedBlockOopType
		perform: #cull:cull:cull:cull:
		withArgs:
			{(aClientListElement clientElementOopType).
			index.
			(Sensor shiftPressed).
			listSelectionsDictionary}.
	^ self session library localFor: oopType
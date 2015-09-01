as yet unclassified
switchActionForClientButtonBarElement: aClientButtonBarElement selector: selector
	| oopType |
	oopType := self session
		rawReceiverNB: aClientButtonBarElement switchActionBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientButtonBarElement clientElementOopType).
			selector}.
	^ self session library localFor: oopType
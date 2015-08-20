as yet unclassified
switchActionForClientButtonBarElement: aClientButtonBarElement selector: selector
	self session
		rawReceiverNB: aClientButtonBarElement switchActionBlockOopType
		perform: #value:value:
		withArgs:
			{(aClientButtonBarElement clientElementOopType).
			selector}.
	^ nil
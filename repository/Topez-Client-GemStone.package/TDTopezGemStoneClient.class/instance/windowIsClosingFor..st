as yet unclassified
windowIsClosingFor: aClientListElement
	[ 
	self session
		rawReceiverNB: aClientListElement windowIsClosingBlockOopType
		perform: #value:
		withArgs: {(aClientListElement clientElementOopType)} ]
		on: GciSessionNotLoggedInError
		do: [ :ignored |  ]
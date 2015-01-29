accessing
clientElement: aClientElement
	super clientElement: aClientElement.
	aClientElement beMultipleSelection
		ifTrue: [ self listMorph beMultipleSelection ]
		ifFalse: [ self listMorph beSingleSelection ].
	list := nil.
	self changed: #list
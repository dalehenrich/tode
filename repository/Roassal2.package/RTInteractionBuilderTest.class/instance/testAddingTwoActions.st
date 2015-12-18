tests
testAddingTwoActions
	| e |
	builder action: #inspect; action: #browse.
	self assert: builder numberOfMenuEntries equals: 2.
	
	e := RTElement new.
	builder setUpElements: (Array with: e) asGroup.
	self assert: e announcer numberOfSubscriptions equals: 1.
	
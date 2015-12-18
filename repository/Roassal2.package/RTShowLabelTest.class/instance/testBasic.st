tests
testBasic
	view := RTView new.
	box := RTBox new size: 30; elementOn: 'Hi'.
	view add: box.
	self assert: view canvas shapes size equals: 1.

	box @ RTShowLabel.
	self assert: view canvas shapes size equals: 1.

	box testCaseAnnounce: TRMouseEnter.
	self assert: view canvas shapes size equals: 2.
	
	box testCaseAnnounce: TRMouseLeave.
	self assert: view canvas shapes size equals: 1.

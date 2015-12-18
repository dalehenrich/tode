tests
testRemovingGroup

	| els view |
	els := RTBox new elementsOn: (1 to: 5).
	view := RTView new.
	view addAll: els.
	self assert: view numberOfElements equals: 5.
	
	els remove.
	self assert: view numberOfElements equals: 0.
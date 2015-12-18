tests
testCentralPoint

	| ds  |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds interaction popupText.
	ds points: #(1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.


	b minY: -2.
	
	b build.
	
	self assert: b centralPoint equals: 0 @ -80.
	self assert: b getAxisX fromPoint equals: 0 @ -80

tests
testCentralPoint02

	| ds |
	b := RTGrapher new.

	ds := RTStackedDataSet new.
	ds interaction popupText.
	ds points: #(-2 1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.

	b build.
	
	self assert: b centralPoint equals: 0 @ -80

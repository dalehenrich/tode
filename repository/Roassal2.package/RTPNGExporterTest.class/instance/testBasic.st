tests
testBasic

	emptyExporter builder: view.
	self assert: emptyExporter builder equals: view.
	"5 @ 5 is a delta we add to make sure we have no pb when exporting"
	self assert: emptyExporter viewExtent equals: (5 @ 5).
	self assert: emptyExporter viewHalfExtent equals: (2.5 @ 2.5).
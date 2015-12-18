tests
testNoDot

	| b ds |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds noDot.
	ds points: #(1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.

	b build.
	
	self assert: (b view elementFromModel: 2) trachelShape width equals: 0.
	self assert: (b view elementFromModel: 2) trachelShape height equals: 0.
	
	"Axes"
	self assert: b view numberOfEdges equals: 2
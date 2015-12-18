tests
testEdgesFromToAll

	| shape e someElements lines |
	shape := RTLine new.
	e := RTElement new.
	someElements := RTElement forCollection: (1 to: 5).
	lines := shape edgesFrom: e toAll: someElements.
	self assert: lines size equals: 5.
	self assert: lines first shape == lines second shape
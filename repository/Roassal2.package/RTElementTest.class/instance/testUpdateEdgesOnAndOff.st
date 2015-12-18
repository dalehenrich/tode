creating
testUpdateEdgesOnAndOff

	| e |
	e := RTElement new.
	self assert: e shouldUpdateEdges.
	e updateEdgesOFF.
	self deny: e shouldUpdateEdges.
	e updateEdgesON.
	self assert: e shouldUpdateEdges.
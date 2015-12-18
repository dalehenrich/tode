tests
testDefault

	| helix |
	helix := RTCubeHelix new.
	self assert: helix rotations equals: -1.5.
	self assert: helix saturation equals: 1.2.
	self assert: helix gamma equals: 1.0
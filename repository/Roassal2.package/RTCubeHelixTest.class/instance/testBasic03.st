tests
testBasic03

	| helix |
	helix := RTCubeHelix new.
	helix saturation: 0.5.
	
	helix level: 0.
	helix level: 0.5.
	helix level: 1.
	self assert: helix saturation equals: 0.5
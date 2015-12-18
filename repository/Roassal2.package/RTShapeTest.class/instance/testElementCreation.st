tests
testElementCreation

	| s |
	s := RTBox new.
	self assert: s element shape == s
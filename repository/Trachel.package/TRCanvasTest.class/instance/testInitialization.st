tests
testInitialization

	| circle |
	circle := TREllipseShape new.
	self assert: circle encompassingRectangle = TRAbstractBoxShape nullRectangle
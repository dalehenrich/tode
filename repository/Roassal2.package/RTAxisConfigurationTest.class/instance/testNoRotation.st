tests
testNoRotation
	config rotateLabels.
	config doNotRotateLabels.
	self deny: config areLabelRotated 
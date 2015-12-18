signalling
signalUpdate
	self ifEmpty: [ ^ self ].
	self first signalUpdate.
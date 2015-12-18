callbacks
removeCallback: aCallback ifAbsent: anErrorBlock
	self hasCallback ifFalse: [ ^ self ].
	self callbacks remove: aCallback ifAbsent: anErrorBlock
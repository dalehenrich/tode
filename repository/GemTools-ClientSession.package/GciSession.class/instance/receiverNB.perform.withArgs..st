public gci calls
receiverNB: receiver perform: aSymbol withArgs: argsArray
	^ self
		receiverNB: receiver
		perform: aSymbol
		withArgs: argsArray
		envId: 0
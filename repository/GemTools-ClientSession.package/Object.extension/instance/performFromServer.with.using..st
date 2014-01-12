*gemtools-clientsession
performFromServer: aSelector with: args using: aSession
	^ aSelector numArgs == 0
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ 
			| messageArgs |
			messageArgs := args.
			messageArgs isArray
				ifFalse: [ 
					| argCount argsOop |
					argsOop := args.
					argCount := aSession receiverNB: argsOop perform: 'size' withArgs: #().
					messageArgs := Array new: argCount.
					1 to: argCount do: [ :i | messageArgs at: i put: (aSession receiverNB: argsOop perform: 'at:' withArgs: {i}) ] ].
			self perform: aSelector withArguments: messageArgs ]
tests
testTextInteractionRequestPassword
	| requestPassword generatorStonString answer |
	requestPassword := 'Prompt for password'.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			self
				assert: interaction prompt = requestPassword;
				assert: interaction requestPassword.
			response := false
				ifTrue: [ interaction interact ]
				ifFalse: [ 'password' ].
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	generatorStonString := STON toString: {requestPassword}.
	answer := self client session
		send: #textInteractionRequestPasswordUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: answer = 'password'
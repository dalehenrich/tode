tests
testInformInteraction
	| message generatorStonString answer |
	message := 'Inform something'.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			self assert: interaction message = message.
			response := false
				ifTrue: [ interaction interact ]
				ifFalse: [ nil ].
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	generatorStonString := STON toString: {message}.
	answer := self client session
		send: #informInteractionUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: answer isNil
tests
testMultiLineTextInteraction
	| prompt generatorStonString answer template |
	prompt := 'Prompt something'.
	template := 'template'.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			self
				assert: interaction prompt = prompt;
				assert: interaction template = template.
			response := false
				ifTrue: [ interaction interact ]
				ifFalse: [ 'answer' ].
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	generatorStonString := STON
		toString:
			{prompt.
			template}.
	answer := self client session
		send: #multiLineTextInteractionUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: answer = 'answer'
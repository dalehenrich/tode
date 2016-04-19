tests
testConfirmInteraction
	| prompt confirm cancel abort generatorStonString answer |
	prompt := 'Confirm something'.
	confirm := 'confirm'.
	cancel := 'cancel'.
	abort := 'abort'.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			self
				assert: interaction prompt = prompt;
				assert: interaction confirm = confirm;
				assert: interaction cancel = cancel;
				assert: interaction abort = abort.
			response := false
				ifTrue: [ interaction interact ]
				ifFalse: [ true ].
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	generatorStonString := STON
		toString:
			{prompt.
			confirm.
			cancel.
			abort}.
	answer := self client session
		send: #confirmInteractionUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: answer
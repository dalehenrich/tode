tests - interactions
testChoiceInteraction
	| choice prompt labels values lines generatorStonString expectedChoice |
	prompt := 'Select something'.
	labels := {'label1' . 'label2'}.
	values := {1 . 2}.
	lines := {1}.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			self
				assert: interaction prompt = prompt;
				assert: interaction labels = labels;
				assert: interaction values = values;
				assert: interaction lines = lines.
			response := false
				ifTrue: [ interaction interact ]
				ifFalse: [ expectedChoice ].
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	generatorStonString := STON
		toString:
			{prompt.
			labels.
			values.
			lines}.
	expectedChoice := 1.
	choice := self client session
		send: #choiceInteractionUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: choice = expectedChoice
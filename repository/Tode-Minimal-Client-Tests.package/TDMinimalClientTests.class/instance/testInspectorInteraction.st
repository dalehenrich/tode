tests - interactions
testInspectorInteraction
	"the same interaction as #testEditStonElement_"

	| object generatorStonString answer cmdResult |
	self client
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			self
				assert:
					clientElement firstList key asArray
						=
							#('.        -> 7' '(class)@ -> SmallInteger' '(oop)@   -> 58' '(hex)@   -> ''16r7''' '(value)@ -> ''7''').
			1	"windowId" ]
		for: #editStonElement:.
	cmdResult := self client evaluateCommands: 'eval `3+4`; inspect'.	"using inspect command"
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = '[58 sz:0 SmallInteger] 7'.
	cmdResult := self client evaluateCommands: 'eval `(3+4) inspect`'.	"using inspect message"
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = '[58 sz:0 SmallInteger] 7'.
	object := 7.	"using GsInspectInteraction"
	generatorStonString := STON toString: {object}.
	answer := self client session
		send: #inspectInteractionUsing:
		to: self generatorOopType
		withArgs: {generatorStonString}.
	self assert: answer = 7
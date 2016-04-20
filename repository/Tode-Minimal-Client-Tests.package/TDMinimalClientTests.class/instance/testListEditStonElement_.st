tests
testListEditStonElement_
	| cmdResult |
	self client
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			self
				assert: (clientElement isKindOf: TodeClientListElement);
				assert:
					clientElement firstList key asArray
						=
							#('.        -> 7' '(class)@ -> SmallInteger' '(oop)@   -> 58' '(hex)@   -> ''16r7''' '(value)@ -> ''7''').
			1	"windowId" ]
		for: #editStonElement:.
	cmdResult := self client evaluate: 'eval `3+4`; edit'.
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = '[58 sz:0 SmallInteger] 7'
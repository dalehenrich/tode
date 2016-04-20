tests
testTextEditStonElement_
	| cmdResult |
	self client
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			self
				assert: (clientElement isKindOf: TodeClientSourceElement).
			self halt.
			1	"windowId" ]
		for: #editStonElement:.
	cmdResult := self client evaluate: 'eval `''hello world''`; edit'.
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = '[58 sz:0 SmallInteger] 7'
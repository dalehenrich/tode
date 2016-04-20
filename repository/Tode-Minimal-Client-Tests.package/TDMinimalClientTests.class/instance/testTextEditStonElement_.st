tests
testTextEditStonElement_
	| cmdResult |
	self client
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			self
				assert: (clientElement isKindOf: TodeClientSourceElement);
				assert: clientElement firstSource equals: 'hello world'.
			1	"windowId" ]
		for: #editStonElement:.
	cmdResult := self client evaluate: 'limit oops false'.
	self assert: cmdResult asString  equals: '[12 sz:0 Boolean] false'.
	cmdResult := self client evaluate: 'eval `''hello world''`; edit'.
	self assert: (cmdResult asString includesSubstring: ' sz:11 String] ''hello world''')
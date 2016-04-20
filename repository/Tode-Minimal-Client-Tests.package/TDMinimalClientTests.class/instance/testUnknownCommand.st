tests - error handling
testUnknownCommand
	| cmdResult |
	self client debugMode: false.
	cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = 'tODE ERROR: Unknown command: ''foo'''
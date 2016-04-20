tests - error handling
testUnknownCommand
	| cmdResult |
	self client debugMode: false.
	cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString equals: 'tODE ERROR: Unknown command: ''foo'''
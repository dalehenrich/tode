tests
testCommand
	| cmdResult |
	cmdResult := self client evaluateCommands: 'eval `3+4`'.
	self assert: (cmdResult isKindOf: Text).
	self assert: cmdResult asString = '[58 sz:0 SmallInteger] 7'
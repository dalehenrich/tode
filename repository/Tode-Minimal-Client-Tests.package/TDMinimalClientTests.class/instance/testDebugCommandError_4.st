tests - error handling
testDebugCommandError_4
	"logStackRequested:"

	| cmdResult |
	self client
		debugMode: false;
		interactive: false.
	cmdResult := self client evaluateCommands: 'foo `3+4`'.
	self assert: cmdResult asString = 'tODE ERROR: Unknown command: ''foo'''
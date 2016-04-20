tests - error handling
testDebugCommandError_4
	"logStackRequested:"

	| cmdResult |
	self client
		debugMode: true;
		interactive: false.
	cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: cmdResult asString = 'Error stack logged to Transcript...'
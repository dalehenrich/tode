tests - error handling
testDebugCommandError_2
	| cmdResult |
	self client debugMode: true.
	self client
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			self
				assert: clientElement editorWindowLabel = 'Unknown command: ''foo''';
				assert: clientElement editorWindowLocation == #debugger.
			1	"windowId" ]
		for: #editStonElement:.
	[ cmdResult := self client evaluate: 'foo `3+4`'.
	self assert: cmdResult asString = 'Unknown command: ''foo''' ]
		on: TDInteractiveChooseExceptionHandling
		do: [ :ex | ex debug ]
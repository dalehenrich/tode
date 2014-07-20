instance creation
openSessionDescription: sessionDescription evaluate: aCommand
	| shell console |
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	console := shell console.
	console
		nextPutAll: aCommand;
		cr;
		flush;
		processCommand: aCommand.
	^ shell
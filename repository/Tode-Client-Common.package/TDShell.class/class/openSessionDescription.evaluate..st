system menu
openSessionDescription: sessionDescription evaluate: aCommand
	| shell  |
	shell := self new.
	shell openOnSessionDescription: sessionDescription.
	shell evaluate: aCommand.
	^shell
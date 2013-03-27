instance creation
commandShell: cliShell

	| ttyDisplay |
	ttyDisplay := self new cliShell: cliShell.
	cliShell outputStream: ttyDisplay; errorStream: ttyDisplay.
	cliShell addDependent: ttyDisplay.
	^ ttyDisplay

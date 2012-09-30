instance creation
stashShell: cliShell

	| ttyDisplay |
	ttyDisplay := self new cliShell: cliShell.
	^ ttyDisplay

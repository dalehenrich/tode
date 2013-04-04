model protocol
defaultLabelStringBlock

	^ [ | directoryString |
	directoryString := self cliShell workingDirectory.
	directoryString isEmpty ifTrue: [directoryString := self cliShell shellSyntax nullDirectoryString].
	self class defaultWindowName, ': ', directoryString]

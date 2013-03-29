system startup
startUp: resuming

	| shell |
	resuming ifTrue:
		[(shell := self default)
			ifNotNil: [shell startUpInNewSession]]
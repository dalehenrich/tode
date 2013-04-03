initialize-release
release

	cliShell ifNotNil: [cliShell removeDependent: self].
	super release

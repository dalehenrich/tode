accessing
cliShell
	"Answer the value of cliShell"

	^ cliShell ifNil: [cliShell := CommandShell new]
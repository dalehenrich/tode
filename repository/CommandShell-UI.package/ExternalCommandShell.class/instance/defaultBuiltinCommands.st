defaults
defaultBuiltinCommands
	"The commands which make sense in a headless tty environment"

	^ #(cd: copyToError: copyToOutput: snapshot: ttyExit: help: history: pwd: sls: type:)

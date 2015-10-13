as yet unclassified
test21
	| commandLine sawCommands |
	commandLine := 'command -c foo arg1 > result
  skipMe subcommand -c foo arg1 > result
command subcommand -c foo arg1 > result'.
	sawCommands := false.
	TDCommandLine
		fromStream: commandLine readStream
		selectLine: [ :cmdLine | cmdLine beginsWith: 'command' ]
		forEachCommand: [ :command | 
			self assert: command command = 'command'.
			sawCommands := true ].
	self assert: sawCommands
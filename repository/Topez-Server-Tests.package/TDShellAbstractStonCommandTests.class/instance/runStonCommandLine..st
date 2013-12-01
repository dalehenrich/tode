tests
runStonCommandLine: commandLineString
  | command stonTool |
  command := TDCommandLine commandLine: commandLineString redirectTarget: nil.
  command hasSubCommand: true.
  stonTool := topez toolInstanceFor: 'ston'.
  stonTool todeCommand: command.
  stonTool stonrsync
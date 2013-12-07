tests
runRsyncCommandLine: commandLineString
  | command rsyncTool |
  command := TDCommandLine commandLine: commandLineString redirectTarget: nil.
  command hasSubCommand: true.
  rsyncTool := topez toolInstanceFor: 'rsync'.
  rsyncTool todeCommand: command.
  ^ rsyncTool rsync
tests
runRsyncCommandLine: commandLineString
  | command rsyncTool |
  command := TDCommandLine commandLine: commandLineString redirectTarget: nil.
  rsyncTool := topez toolInstanceFor: 'rsync'.
  rsyncTool todeCommand: command.
  ^ rsyncTool rsync
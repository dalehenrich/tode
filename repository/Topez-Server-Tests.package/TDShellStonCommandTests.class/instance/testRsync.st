as yet unclassified
testRsync
  | stonTool command |
  true
    ifTrue: [ ^ self ].
  command := TDCommandLine
    commandLine: 'ston --update rsync rsyncDest'
    redirectTarget: nil.
  stonTool := topez toolInstanceFor: 'ston'.
  stonTool todeCommand: command.
  stonTool stonrsync
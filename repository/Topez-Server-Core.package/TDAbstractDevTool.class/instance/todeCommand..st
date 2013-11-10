as yet unclassified
todeCommand: aTDCommandLine
  todeCommand := aTDCommandLine.
  todeCommand
    ifNil: [ tokens := #() ]
    ifNotNil: [ tokens := todeCommand tokens ]
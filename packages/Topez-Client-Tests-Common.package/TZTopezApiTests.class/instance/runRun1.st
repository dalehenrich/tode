tests
runRun1
    | doit x |
    self pushPrintBlocks.
    doit := '{ 1. 0. -1. {true. false.}. nil }'.
    ^ self runNoError: doit
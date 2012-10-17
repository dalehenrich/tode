tests
runRun2
    | doit x |
    self pushPrintBlocks.
    self topez commandOptions level: 1.
    doit := '{ 1. 0. -1. {true. false.}. (''a'' -> 42) }'.
    ^ self runNoError: doit
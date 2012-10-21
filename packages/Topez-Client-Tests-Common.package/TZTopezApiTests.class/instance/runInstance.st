tests
runInstance
    | doit x |
    self pushPrintBlocks.
    self topez level: 3.
    doit := '{ 1. 0. -1. {true. false.}. nil }'.
    ^ self runInstanceNoError: doit
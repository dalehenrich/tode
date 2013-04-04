tests
runRun3
    | doit |
    self pushPrintBlocks.
    self topez level: 0.
    doit := 'Object'.
    ^ self runNoError: doit
tests
runRun4
    | doit |
    self pushPrintBlocks.
    self topez level: 0.
    doit := 'Object class'.
    ^ self runNoError: doit
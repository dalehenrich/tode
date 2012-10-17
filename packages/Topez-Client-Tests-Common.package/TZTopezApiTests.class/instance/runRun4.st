tests
runRun4
    | doit |
    self pushPrintBlocks.
    self topez commandOptions level: 0.
    doit := 'Object class'.
    ^ self runNoError: doit
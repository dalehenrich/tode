tests
runRun3
    | doit |
    self pushPrintBlocks.
    self topez commandOptions level: 0.
    doit := 'Object'.
    ^ self runNoError: doit
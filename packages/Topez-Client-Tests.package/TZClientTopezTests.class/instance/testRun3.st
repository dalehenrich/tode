tests
testRun3
    | result doit x |
    self pushPrintBlocks.
    self topez commandOptions level: 0.
    doit := 'Object'.
    result := self runNoError: doit.
    self assert: (x := result printString) = '[Object class] Object'
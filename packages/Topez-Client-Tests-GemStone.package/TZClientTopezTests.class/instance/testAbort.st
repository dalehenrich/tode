tests
testAbort
    | result x |
    self topez commandOptions level: 0.
    self pushPrintBlocks.
    result := self doNoError: [ self topez abort ].
    self assert: (x := result printString) = '[System class] System'
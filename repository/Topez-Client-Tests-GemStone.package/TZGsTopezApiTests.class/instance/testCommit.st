tests
testCommit
    | result x |
    result := self doNoError: [ self topez commit ].
    self pushPrintBlocks.
    self assert: (x := result printString) = '[Boolean] true'
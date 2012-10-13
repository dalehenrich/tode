testing
testHalt
    | result x |
    self pushPrintBlocks.
    result := self runHalt.
    self assert: (x := result asString) = '{ sz:6 Halt} Halt'
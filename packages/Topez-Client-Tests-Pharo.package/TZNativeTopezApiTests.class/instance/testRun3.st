tests
testRun3
    | result x |
    result := self runRun3.
    self assert: (x := result printString) = '{ sz:13 Object} Object'
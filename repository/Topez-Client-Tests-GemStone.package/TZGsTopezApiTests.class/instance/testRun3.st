tests
testRun3
    | result x |
    result := self runRun3.
    self assert: (x := result printString) = '[Object class] Object'
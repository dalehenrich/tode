tests
testRun4
    | result x |
    result := self runRun4.
    self assert: (x := result printString) = '[Metaclass3] Object class'
tests
testExit
    | result x |
    result := self runExit.
    self assert: (x := result asString) = ''
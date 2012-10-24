testing
testInstance
    | result x |
    result := self runInstance.
    self assert: (x := result asString) = ''
tests
testEditClassMethod
    | result x |
    result := self runEditClassMethod.
    self assert: (x := result asString) = ''
tests
testEditMethod
    | result x |
    result := self runEditMethod.
    self assert: (x := result asString) = ''
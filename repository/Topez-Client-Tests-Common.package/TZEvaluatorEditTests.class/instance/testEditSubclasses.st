tests
testEditSubclasses
    | result x |
    result := self runEditSubclasses.
    self assert: (x := result asString) = ''
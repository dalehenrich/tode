tests
testEditClassSelectors
    | result x |
    result := self runEditClassSelectors.
    self assert: (x := result asString) = ''
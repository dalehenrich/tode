tests
testEditSelectors
    | result x |
    result := self runEditSelectors.
    self assert: (x := result asString) = ''
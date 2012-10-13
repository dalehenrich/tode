tests
testSetCategory
    | result x |
    result := self runSetCategory.
    self assert: (x := result asString) = 'accessing'
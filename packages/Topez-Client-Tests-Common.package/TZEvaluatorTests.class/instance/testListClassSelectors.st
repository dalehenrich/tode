tests
testListClassSelectors
    | result x |
    result := self runListClassSelectors.
    self assert: (x := result asString) = 'on:'
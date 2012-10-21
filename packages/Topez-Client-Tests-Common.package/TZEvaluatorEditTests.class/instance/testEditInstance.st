tests
testEditInstance
    | result x |
    result := self runEditInstance.
    self assert: (x := result asString) = ''
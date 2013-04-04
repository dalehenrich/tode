tests
testTopez
    | result x |
    result := self runTopez.
    self assert: (x := result asString) = '7'
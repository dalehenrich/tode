tests
testEditClass
    | result x |
    result := self runEditClass.
    self assert: (x := result asString) = ''
tests
testEditSuperclasses
    | result x |
    result := self runEditSuperclasses.
    self assert: (x := result asString) = ''
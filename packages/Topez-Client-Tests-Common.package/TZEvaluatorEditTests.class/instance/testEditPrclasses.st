tests
testEditPrclasses
    | result x |
    result := self runEditPrclasses.
    self assert: (x := result asString) = ''
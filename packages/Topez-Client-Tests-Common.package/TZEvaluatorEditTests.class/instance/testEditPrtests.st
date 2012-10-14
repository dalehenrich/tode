tests
testEditPrtests
    | result x |
    result := self runEditPrtests.
    self assert: (x := result asString) = ''
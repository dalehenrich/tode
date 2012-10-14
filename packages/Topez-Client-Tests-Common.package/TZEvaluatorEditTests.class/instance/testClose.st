tests
testClose
    | result x |
    result := self runClose.
    self assert: (x := result asString) = ''
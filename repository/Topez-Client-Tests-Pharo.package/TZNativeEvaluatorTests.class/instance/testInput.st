testing
testInput
    | result x |
    result := self runInput.
    self assert: (x := result asString) = '{ sz:0 SmallInteger} 7'
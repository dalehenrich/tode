testing
testInput
    | result x |
    result := self runInput.
    self assert: (x := result asString) = '[58 sz:0 cls: 74241 SmallInteger] 7'
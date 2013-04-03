testing
testInstance
    | result x |
    result := self runInstance.
    self assert: (x := result asString) = '{ sz:0 SmallInteger} 7'
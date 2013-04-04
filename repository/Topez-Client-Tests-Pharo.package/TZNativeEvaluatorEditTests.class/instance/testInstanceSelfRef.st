testing
testInstanceSelfRef
    | result x |
    result := self runInstanceSelfRef.
    self assert: (x := result asString) = '{ sz:0 SmallInteger} 11'
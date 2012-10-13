tests
testSetClass
    | result x |
    result := self runSetClass.
    self assert: (x := result asString) = '{ sz:13 Object} Object'
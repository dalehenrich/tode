tests
testSetClass
    | result x |
    result := self runSetClass.
    self assert: (x := result asString) = '[Object class] Object'
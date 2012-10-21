testing
testListInstance
    | result x |
    result := self runListInstance.
    self assert: (x := result asString) = '{  sz:0 cls: SmallInteger} 7'
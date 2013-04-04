test proxy
testObjectClassProxy
    | result x |
    result := self runObjectClassProxy.
    self assert: (x := result printString) = '[206081 sz:14 cls: 146177 Metaclass3] Object class'
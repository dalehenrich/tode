test proxy
testObjectClassClassClassProxy
    | result x |
    result := self runObjectClassClassClassProxy.
    self assert: (x := result printString) = '[247297 sz:14 cls: 146177 Metaclass3] Metaclass3 class'
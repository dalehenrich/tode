test proxy
testObjectClassClassProxy
    | result x |
    result := self runObjectClassClassProxy.
    self assert: (x := result printString) = '[146177 sz:19 cls: 247297 Metaclass3 class] Metaclass3'
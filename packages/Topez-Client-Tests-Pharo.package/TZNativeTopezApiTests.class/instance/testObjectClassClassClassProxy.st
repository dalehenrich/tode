test proxy
testObjectClassClassClassProxy
    | result x |
    result := self runObjectClassClassClassProxy.
    self assert: (x := result printString) = '{ sz:8 Metaclass class} Metaclass class'
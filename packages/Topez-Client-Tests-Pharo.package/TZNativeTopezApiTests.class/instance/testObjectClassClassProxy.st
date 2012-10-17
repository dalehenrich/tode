test proxy
testObjectClassClassProxy
    | result x |
    result := self runObjectClassClassProxy.
    self assert: (x := result printString) = '{ sz:13 Metaclass} Metaclass'
test proxy
testObjectProxy
    | result x |
    result := self runObjectProxy.
    self assert: (x := result printString) = '{ sz:13 Object} Object'
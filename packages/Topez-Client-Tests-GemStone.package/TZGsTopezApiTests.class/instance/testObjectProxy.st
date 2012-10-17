test proxy
testObjectProxy
    | result x |
    result := self runObjectProxy.
    self assert: (x := result printString) = '[72193 sz:19 cls: 206081 Object class] Object'
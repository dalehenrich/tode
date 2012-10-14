test coding
testSetClass
    | result x |
    self topez commandOptions level: 0.
    result := self doNoError: [ self topez setClass: 'Object' ].
    self assert: result oop == 72193.
    self assert: result classOop == 206081.
    self assert: self topez currentClass == result.
    self assert: (x := result printString) = '[72193 sz:19 cls: 206081 Object class] Object'
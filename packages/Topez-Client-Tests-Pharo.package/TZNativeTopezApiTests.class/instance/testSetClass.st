test coding
testSetClass
    | result x |
    self topez level: 0.
    result := self doNoError: [ self topez setClass: 'Object' ].
    self assert: self topez currentClass == result.
    self assert: (x := result printString) = '{ sz:13 Object} Object'
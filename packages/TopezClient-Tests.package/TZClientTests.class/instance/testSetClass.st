tests
testSetClass
    | result x |
    result := self doNoError: [ self topez setClass: 'Object' ].
    self assert: result header oop == 72193.
    self assert: result header classOop == 206081
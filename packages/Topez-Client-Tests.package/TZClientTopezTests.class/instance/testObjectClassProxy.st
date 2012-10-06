test proxy
testObjectClassProxy
    | result x |
    self topez commandOptions level: 0.
    result := self runNoError: 'Object class'.
    self assert: (x := result printString) = '[206081 sz:14 cls: 146177 Metaclass3] Object class'
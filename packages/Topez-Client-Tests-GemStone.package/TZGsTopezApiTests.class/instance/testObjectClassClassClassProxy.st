test proxy
testObjectClassClassClassProxy
    | result x |
    self topez commandOptions level: 0.
    result := self runNoError: 'Object class class class'.
    self assert: (x := result printString) = '[247297 sz:14 cls: 146177 Metaclass3] Metaclass3 class'
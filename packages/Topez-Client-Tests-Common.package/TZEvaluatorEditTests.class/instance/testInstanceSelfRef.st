testing
testInstanceSelfRef
    | result x |
    result := self runInstanceSelfRef.
    self assert: (x := result asString) = ''
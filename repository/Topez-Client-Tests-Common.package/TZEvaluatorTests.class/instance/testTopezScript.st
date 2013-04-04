tests
testTopezScript
    | result x |
    result := self runTopezScript.
    self assert: (x := result asString) = '7'
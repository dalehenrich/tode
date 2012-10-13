testing
testRunScript
    | result x |
    result := self runRunScript.
    self assert: (x := result asString) = '{ sz:0 SmallInteger} 7'
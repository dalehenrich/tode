testing
testRun
    | result x |
    result := self runRun.
    self assert: (x := result asString) = '{ sz:0 SmallInteger} 7'
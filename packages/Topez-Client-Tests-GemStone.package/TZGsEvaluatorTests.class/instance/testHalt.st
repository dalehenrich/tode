testing
testHalt
    | result x |
    result := self runHalt.
    self assert: (x := result asString) = '[nil] a Halt occurred (error 2709)'
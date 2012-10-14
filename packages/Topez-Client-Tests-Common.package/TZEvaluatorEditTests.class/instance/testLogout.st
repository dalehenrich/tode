tests
testLogout
    | result x |
    result := self runLogout.
    self assert: (x := result asString) = ''
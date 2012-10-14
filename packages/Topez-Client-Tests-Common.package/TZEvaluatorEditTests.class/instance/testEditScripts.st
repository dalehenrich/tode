tests
testEditScripts
    | result x |
    result := self runEditScripts.
    self assert: (x := result asString) = ''
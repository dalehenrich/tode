tests
testSetProject
    | result x |
    result := self runSetProject.
    self assert: (x := result asString) = '[String] Topez'